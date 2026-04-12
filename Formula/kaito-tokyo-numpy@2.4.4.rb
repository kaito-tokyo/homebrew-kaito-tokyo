class KaitoTokyoNumpyAT244 < Formula
  desc "Package for scientific computing with Python"
  homepage "https://www.numpy.org/"
  url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
  sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/kaito-tokyo/homebrew-kaito-tokyo/releases/download/kaito-tokyo-numpy@2.4.4-2.4.4"
    sha256 cellar: :any,                 arm64_tahoe:   "c657646d0a8e3a56d9d5fc5ba761dbd0e1348134a8f66895d2b63d8576a5101e"
    sha256 cellar: :any,                 arm64_sequoia: "c282d816301f76e61b8ce3c00f2418987e72e9cc0f305216ddbd524273cc5fb9"
    sha256 cellar: :any,                 arm64_sonoma:  "784c21b49a319f506cf1bbd3a292f2b2dea2174db92df640210b1dca44074b33"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "baad8b37963395af793048b83c3c03d5f96ebcdf7ed0375eb4a700ea0945a2d5"
  end

  keg_only :versioned_formula

  depends_on "gcc" => :build
  depends_on "kaito-tokyo-python@3.11" => [:build, :test]
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "openblas"

  on_linux do
    depends_on "patchelf" => :build
  end

  def install
    python = Formula["kaito-tokyo-python@3.11"]
    python3 = python.opt_libexec/"bin/python"
    args = %w[
      -Csetup-args=-Dblas=openblas
      -Csetup-args=-Dlapack=openblas
    ]
    system python3, "-m", "pip", "install", *args, *std_pip_args(build_isolation: true), Pathname.pwd

    libexec.install Dir["#{bin}/*"]
    rm_r(bin)
  end

  test do
    python3 = Formula["kaito-tokyo-python@3.11"].opt_libexec/"bin/python"
    system python3, "-c", <<~PYTHON
      import numpy as np
      t = np.ones((3,3), int)
      assert t.sum() == 9
      assert np.dot(t, t).sum() == 27
    PYTHON
  end
end
