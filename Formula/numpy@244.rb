class NumpyAT244 < Formula
  desc "Package for scientific computing with Python"
  homepage "https://www.numpy.org/"
  url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
  sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
  license "BSD-3-Clause"

  depends_on "gcc" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "python@3.11" => [:build, :test]
  depends_on "openblas"

  keg_only :versioned_formula

  on_linux do
    depends_on "patchelf" => :build
  end

  def install
    python3 = Formula["python@3.11"].opt_libexec/"bin/python3"
    system python3, "-m", "pip", "install", "-Csetup-args=-Dblas=openblas",
                                            "-Csetup-args=-Dlapack=openblas",
                                            *std_pip_args(build_isolation: true), "."
  end

  test do
    python3 = Formula["python@3.11"].opt_libexec/"bin/python3"
    system python3, "-c", <<~PYTHON
      import numpy as np
      t = np.ones((3,3), int)
      assert t.sum() == 9
      assert np.dot(t, t).sum() == 27
    PYTHON
  end
end
