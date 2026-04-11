class KaitoTokyoNumpyAT244 < Formula
  desc "Package for scientific computing with Python"
  homepage "https://www.numpy.org/"
  url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
  sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
  license "BSD-3-Clause"
  revision 1

  bottle do
    root_url "https://github.com/kaito-tokyo/homebrew-kaito-tokyo/releases/download/kaito-tokyo-numpy@2.4.4-2.4.4"
    sha256 cellar: :any,                 arm64_tahoe:  "eb8ff13823eaf43397d5fcc88321d117fd2d66aeb2feeb5844fa7f86edc2d154"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cc9125c867e14651ce6789a7ac06196fd36732b1b545164bb8c7df780eb05d94"
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
