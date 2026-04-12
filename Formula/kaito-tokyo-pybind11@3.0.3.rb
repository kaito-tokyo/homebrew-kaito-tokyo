class KaitoTokyoPybind11AT303 < Formula
  desc "Seamless operability between C++11 and Python"
  homepage "https://github.com/pybind/pybind11"
  url "https://github.com/pybind/pybind11/archive/refs/tags/v3.0.3.tar.gz"
  sha256 "787459e1e186ee82001759508fefa408373eae8a076ffe0078b126c6f8f0ec5e"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/kaito-tokyo/homebrew-kaito-tokyo/releases/download/kaito-tokyo-pybind11@3.0.3-3.0.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "c7d0ef454a6908cb593ee32a5c49b6de17824787b6cf6fc7d9f976bb156d6dd3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "21e3a816c70086a26c3c3e95809777e801c4fb95fbf8c13a594ab72bc2a6a3da"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e6e3674d66790aeddd657203c1cc0c679a1fe1aff8b1a8e72191d75195ad1b0b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a7cc33bb6dca5db1e7d408a12e2c26afe71d5a90a3fe3e4e740863ae886b821f"
  end

  keg_only :versioned_formula

  depends_on "cmake" => :build
  depends_on "kaito-tokyo-python@3.11" => [:build, :test]

  on_linux do
    depends_on "binutils" => [:test]
  end

  def pythons
    deps.map(&:to_formula)
        .select { |f| f.name.match?(/^kaito-tokyo-python@3\.\d+$/) }
  end

  def site_packages(python_exe)
    pyversion = Language::Python.major_minor_version(python_exe)
    "lib/kaito-tokyo-python#{pyversion}/site-packages"
  end

  def install
    # Install /include and /share/cmake to the global location
    system "cmake", "-S", ".", "-B", "build", "-DPYBIND11_TEST=OFF", "-DPYBIND11_NOPYTHON=ON", *std_cmake_args
    system "cmake", "--install", "build"

    # build an `:all` bottle.
    inreplace share/"pkgconfig/pybind11.pc", /^prefix=$/, "\\0#{opt_prefix}"

    pythons.each do |python|
      # Install Python package too
      python_exe = python.opt_libexec/"bin/python"
      system python_exe, "-m", "pip", "install", *std_pip_args(build_isolation: true), "."

      pyversion = Language::Python.major_minor_version(python_exe)
      (buildpath/"pybind11-config-#{pyversion}").write <<~BASH
        #!/bin/bash
        exec -a "$0" "#{python.opt_bin}/python#{pyversion}" -m pybind11 "$@"
      BASH
      chmod "+x", "pybind11-config-#{pyversion}"
      bin.install "pybind11-config-#{pyversion}"

      site_packages_pybind11 = prefix/site_packages(python_exe)/"pybind11"

      # Avoid installing duplicate files from the prefix
      site_packages_share = site_packages_pybind11/"share"
      rm_r site_packages_share.children
      site_packages_share.install_symlink share.children

      site_packages_include = site_packages_pybind11/"include"
      rm_r site_packages_include
      site_packages_include.install_symlink include.children
    end
  end

  test do
    if OS.linux?
      binutils = Formula["binutils"].opt_bin
      ENV.prepend_path "PATH", binutils
    end

    (testpath/"example.cpp").write <<~CPP
      #include <pybind11/pybind11.h>

      int add(int i, int j) {
          return i + j;
      }
      namespace py = pybind11;
      PYBIND11_MODULE(example, m) {
          m.doc() = "pybind11 example plugin";
          m.def("add", &add, "A function which adds two numbers");
      }
    CPP

    (testpath/"example.py").write <<~PYTHON
      import example
      example.add(1,2)
    PYTHON

    pythons.each do |python|
      python_exe = python.opt_libexec/"bin/python"

      python_flags = Utils.safe_popen_read(
        python.opt_libexec/"bin/python-config",
        "--cflags",
        "--ldflags",
        "--embed",
      ).split
      system ENV.cxx, "-shared", "-fPIC", "-O3", "-std=c++11", "example.cpp", "-o", "example.so", *python_flags
      system python_exe, "example.py"
    end
  end
end
