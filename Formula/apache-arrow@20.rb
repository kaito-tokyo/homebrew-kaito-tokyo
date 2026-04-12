class ApacheArrowAT20 < Formula
  desc "Columnar in-memory analytics layer designed to accelerate big data"
  homepage "https://arrow.apache.org/"
  url "https://github.com/apache/arrow/archive/refs/tags/apache-arrow-20.0.0.tar.gz"
  sha256 "67e31a4f46528634b8c3cbb0dc60ac8f85859d906b400d83d0b6f732b0c5b0e3"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/kaito-tokyo/homebrew-kaito-tokyo/releases/download/apache-arrow@20-20.0.0"
    sha256 cellar: :any, arm64_tahoe:   "cccee08a0beeb05c66d15fcbf78e815bfa72cd0d286f2c3029805447cc99bc55"
    sha256 cellar: :any, arm64_sequoia: "4bc2a9a2889ff28e461dd682a0f217716d9ab458841b0ff6b68dec092e96e500"
    sha256 cellar: :any, arm64_sonoma:  "81447bf499c71a56143bfb7f957ede3bdb0b02c9f0549183ed283537da6562e8"
    sha256               x86_64_linux:  "86dc2cb1f09cae9a4fc10f98c2e4fc46bbe849298e78612b6c142c515837f6ce"
  end

  keg_only :versioned_formula

  depends_on "boost" => :build
  depends_on "cmake" => :build
  depends_on "gflags" => :build
  depends_on "kaito-tokyo-python@3.11" => :build
  depends_on "rapidjson" => :build
  depends_on "xsimd" => :build
  depends_on "abseil"
  depends_on "aws-crt-cpp"
  depends_on "aws-sdk-cpp"
  depends_on "brotli"
  depends_on "grpc"
  depends_on "llvm@20"
  depends_on "lz4"
  depends_on "openssl@3"
  depends_on "protobuf"
  depends_on "re2"
  depends_on "snappy"
  depends_on "thrift"
  depends_on "utf8proc"
  depends_on "zstd"

  uses_from_macos "bzip2"
  uses_from_macos "zlib"

  on_linux do
    depends_on "zlib-ng-compat"
  end

  def install
    if OS.linux?
      ENV["CC"] = Formula["llvm@20"].opt_bin/"clang"
      ENV["CXX"] = Formula["llvm@20"].opt_bin/"clang++"
    end

    inreplace "cpp/cmake_modules/BuildUtils.cmake", /cctools-/, "cctools(_ld)?-"

    # We set `ARROW_ORC=OFF` because it fails to build with Protobuf 27.0
    args = %W[
      -DCMAKE_INSTALL_RPATH=#{rpath}
      -DLLVM_ROOT=#{Formula["llvm@20"].opt_prefix}
      -DARROW_DEPENDENCY_SOURCE=SYSTEM
      -DARROW_ACERO=ON
      -DARROW_COMPUTE=ON
      -DARROW_CSV=ON
      -DARROW_DATASET=ON
      -DARROW_FILESYSTEM=ON
      -DARROW_FLIGHT=ON
      -DARROW_FLIGHT_SQL=ON
      -DARROW_GANDIVA=ON
      -DARROW_HDFS=ON
      -DARROW_JSON=ON
      -DARROW_ORC=OFF
      -DARROW_PARQUET=ON
      -DARROW_PROTOBUF_USE_SHARED=ON
      -DARROW_S3=ON
      -DARROW_WITH_BZ2=ON
      -DARROW_WITH_ZLIB=ON
      -DARROW_WITH_ZSTD=ON
      -DARROW_WITH_LZ4=ON
      -DARROW_WITH_SNAPPY=ON
      -DARROW_WITH_BROTLI=ON
      -DARROW_WITH_UTF8PROC=ON
      -DARROW_INSTALL_NAME_RPATH=OFF
      -DPARQUET_BUILD_EXECUTABLES=ON
    ]
    args << "-DARROW_MIMALLOC=ON" unless Hardware::CPU.arm?
    # Reduce overlinking. Can remove on Linux if GCC 11 issue is fixed
    args << "-DCMAKE_SHARED_LINKER_FLAGS=-Wl,#{OS.mac? ? "-dead_strip_dylibs" : "--as-needed"}"
    # ARROW_SIMD_LEVEL sets the minimum required SIMD. Since this defaults to
    # SSE4.2 on x86_64, we need to reduce level to match oldest supported CPU.
    # Ref: https://arrow.apache.org/docs/cpp/env_vars.html#envvar-ARROW_USER_SIMD_LEVEL
    if build.bottle? && Hardware::CPU.intel? && (!OS.mac? || !MacOS.version.requires_sse42?)
      args << "-DARROW_SIMD_LEVEL=NONE"
    end

    system "cmake", "-S", "cpp", "-B", "build", *args, *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    ENV.method(DevelopmentTools.default_compiler).call if OS.linux?

    (testpath/"test.cpp").write <<~CPP
      #include "arrow/api.h"
      int main(void) {
        arrow::int64();
        return 0;
      }
    CPP
    system ENV.cxx, "test.cpp", "-std=c++17", "-I#{include}", "-L#{lib}", "-larrow", "-o", "test"
    system "./test"
  end
end
