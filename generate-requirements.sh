#!/bin/bash

# shellcheck disable=SC2312

set -euo pipefail
shopt -s nullglob

rm -rf .venv

/opt/homebrew/opt/python@3.11/bin/python3.11 -m venv .venv
# shellcheck disable=SC1091
. .venv/bin/activate

rm -rf generated
mkdir -p generated
pip install open-webui==0.8.12 \
  --ignore-installed \
  --report generated/pip-install-report.json 2>&1 | tee generated/pip_install.log

grep 'Installing collected packages: ' generated/pip_install.log | sed 's/Installing collected packages: //g' | awk -vRS=', ' '{print}' | while read -r pkg; do
  if [[ -z "${pkg}" ]]
  then
    continue
  fi

  case "${pkg}" in
    open-webui)
      continue
      ;;
    torch)
      echo '  resource "torch" do'
      echo '    url "https://github.com/pytorch/pytorch/releases/download/v2.11.0/pytorch-v2.11.0.tar.gz"'
      echo '    sha256 "ab3fde9e7e382f45ac942be6ea2c2ef362c5ccd6f55ed6d5f35e6ea81d3ab88e"'
      echo '  end'
      echo
      continue
      ;;
    *)
      : # Do nothing
      ;;
  esac

  INFO="$(jq -r --arg name "${pkg}" '
    .install[] | 
    select(
      (.metadata.name | ascii_downcase) == ($name | ascii_downcase) or 
      (.metadata.name | gsub("-"; "_") | ascii_downcase) == ($name | gsub("-"; "_") | ascii_downcase)
    ) | 
    "\(.metadata.name) \(.metadata.version)"
  ' "generated/pip-install-report.json" | head -n 1)"

  if [[ -z "${INFO}" ]]
  then
    printf "  # WARNING: %s not found in report.json\n\n" "${pkg}"
    continue
  fi

  name=$(echo "${INFO}" | awk '{print $1}')
  version=$(echo "${INFO}" | awk '{print $2}')

  case "${name}" in
    uuid_utils) resource_name="uuid-utils" ;;
    typing_extensions) resource_name="typing-extensions" ;;
    pyproject_hooks) resource_name="pyproject-hooks" ;;
    mypy_extensions) resource_name="mypy-extensions" ;;
    importlib_resources) resource_name="importlib-resources" ;;
    et_xmlfile) resource_name="et-xmlfile" ;;
    docstring_parser) resource_name="docstring-parser" ;;
    pydantic_core) resource_name="pydantic-core" ;;
    pyasn1_modules) resource_name="pyasn1-modules" ;;
    importlib_metadata) resource_name="importlib-metadata" ;;
    huggingface_hub) resource_name="huggingface-hub" ;;
    *) resource_name="${name}" ;;
  esac

  case "${name}" in
    rapidocr-onnxruntime | opensearch-protobufs | faster-whisper | flatbuffers | Events | rank-bm25)
      JSON="$(curl -fsSL "https://pypi.org/pypi/${name}/${version}/json")"
      INFO_SRC="$(jq -r '.urls[] | select(.url | test("whl$")) | "\(.url)\t\(.digests.sha256)"' <<<"${JSON}")"

      printf '  resource "%s" do\n' "${resource_name}"
      printf '    url "%s"\n' "$(echo "${INFO_SRC}" | awk '{print $1}')"
      printf '    sha256 "%s"\n' "$(echo "${INFO_SRC}" | awk '{print $2}')"
      printf '  end\n\n'
      continue
      ;;
    opencv-python-headless | torch | primp | ctranslate2 | opencv-python | chromadb | pyarrow | hf-xet)
      JSON="$(curl -fsSL "https://pypi.org/pypi/${name}/${version}/json")"
      DIST_LIST="$(jq -r '.urls[] | { cp: .url | match("-cp(311|310|3[0-9])-") | .captures[0].string, url: .url, sha256: .digests.sha256 } | "\(.cp)\t\(.url)\t\(.sha256)"' <<<"${JSON}" | sort -rn)"

      INFO_LINUX="$(grep manylinux <<<"${DIST_LIST}" | grep -E 'x86_64|amd64' | head -n1)"
      INFO_MACX8664="$(grep macosx <<<"${DIST_LIST}" | grep -E 'x86_64|amd64' | head -n1)"
      INFO_MACARM64="$(grep macosx <<<"${DIST_LIST}" | grep arm64 | head -n1)"

      printf '  resource "%s" do\n' "${resource_name}"
      printf '    if OS.mac?\n'
      printf '      if Hardware::CPU.arm?\n'
      printf '        url "%s"\n' "$(echo "${INFO_MACARM64}" | awk '{print $2}')"
      printf '        sha256 "%s"\n' "$(echo "${INFO_MACARM64}" | awk '{print $3}')"
      printf '      else\n'
      printf '        url "%s"\n' "$(echo "${INFO_MACX8664}" | awk '{print $2}')"
      printf '        sha256 "%s"\n' "$(echo "${INFO_MACX8664}" | awk '{print $3}')"
      printf '      end\n'
      printf '    elsif OS.linux?\n'
      printf '      url "%s"\n' "$(echo "${INFO_LINUX}" | awk '{print $2}')"
      printf '      sha256 "%s"\n' "$(echo "${INFO_LINUX}" | awk '{print $3}')"
      printf '    end\n'
      printf '  end\n\n'
      continue
      ;;
    onnxruntime)
      JSON="$(curl -fsSL "https://pypi.org/pypi/onnxruntime/${version}/json")"
      DIST_LIST="$(jq -r '.urls[] | { cp: .url | match("-cp(311|310|3[0-9])-") | .captures[0].string, url: .url, sha256: .digests.sha256 } | "\(.cp)\t\(.url)\t\(.sha256)"' <<<"${JSON}" | sort -rn)"

      INFO_LINUX="$(grep manylinux <<<"${DIST_LIST}" | grep -E 'x86_64|amd64' | head -n1)"
      INFO_MACARM64="$(grep macosx <<<"${DIST_LIST}" | grep arm64 | head -n1)"

      JSON2="$(curl -fsSL "https://pypi.org/pypi/onnxruntime/1.23.2/json")"
      DIST_LIST2="$(jq -r '.urls[] | { cp: .url | match("-cp(311|310|3[0-9])-") | .captures[0].string, url: .url, sha256: .digests.sha256 } | "\(.cp)\t\(.url)\t\(.sha256)"' <<<"${JSON2}" | sort -rn)"
      INFO_MACX8664="$(grep macosx <<<"${DIST_LIST2}" | grep -E 'x86_64|amd64' | head -n1)"

      printf '  resource "%s" do\n' "${resource_name}"
      printf '    if OS.mac?\n'
      printf '      if Hardware::CPU.arm?\n'
      printf '        url "%s"\n' "$(echo "${INFO_MACARM64}" | awk '{print $2}')"
      printf '        sha256 "%s"\n' "$(echo "${INFO_MACARM64}" | awk '{print $3}')"
      printf '      else\n'
      printf '        url "%s"\n' "$(echo "${INFO_MACX8664}" | awk '{print $2}')"
      printf '        sha256 "%s"\n' "$(echo "${INFO_MACX8664}" | awk '{print $3}')"
      printf '      end\n'
      printf '    elsif OS.linux?\n'
      printf '      url "%s"\n' "$(echo "${INFO_LINUX}" | awk '{print $2}')"
      printf '      sha256 "%s"\n' "$(echo "${INFO_LINUX}" | awk '{print $3}')"
      printf '    end\n'
      printf '  end\n\n'
      continue
      ;;
    *)
      JSON="$(curl -fsSL "https://pypi.org/pypi/${name}/${version}/json")"
      INFO_SRC="$(jq -r '.urls[] | select(.url | test("tar.gz$|zip$")) | "\(.url)\t\(.digests.sha256)"' <<<"${JSON}")"

      printf '  resource "%s" do\n' "${resource_name}"
      printf '    url "%s"\n' "$(echo "${INFO_SRC}" | awk '{print $1}')"
      printf '    sha256 "%s"\n' "$(echo "${INFO_SRC}" | awk '{print $2}')"
      printf '  end\n\n'
      continue
      ;;
  esac
done >generated/resources.txt
