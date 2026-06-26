class MumbleServer < Formula
  desc "Open-source, low-latency, high quality voice chat server"
  homepage "https://www.mumble.info"
  url "https://github.com/mumble-voip/mumble/archive/refs/tags/v1.6.870.tar.gz"
  sha256 "63a28011e37e7f05844d81b99a2ba8a4884748e6231ee1931da38f357e3a9c8c"
  license "BSD-3-Clause"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "abseil"
  depends_on "boost"
  depends_on :macos
  depends_on "openssl@3"
  depends_on "protobuf"
  depends_on "qt"
  depends_on "qtbase"

  resource "CLI11" do
    url "https://github.com/CLIUtils/CLI11/archive/4160d259d961cd393fd8d67590a8c7d210207348.tar.gz"
    sha256 "c91e8768600e61be11f7250e3cf3e71afd9d0f18f9c9e9e209a8e084ca08cd85"
  end

  resource "cmake-compiler-flags" do
    url "https://github.com/Krzmbrzl/cmake-compiler-flags/archive/c0e8552d47be4270a1c31b0be693c43faff51537.tar.gz"
    sha256 "0d6530fba4b958323f4eba9b012389b24c23b51a43ac992e8c6ed5feefc3a278"
  end

  resource "flag-icons" do
    url "https://github.com/lipis/flag-icons/archive/38dbe5f294c9692804d3516d617b3dd991c17ecc.tar.gz"
    sha256 "6f37b7717d0c6af81f9db45cfd0ca956222663473dcd88598c0761de33284535"
  end

  resource "minhook" do
    url "https://github.com/mumble-voip/minhook/archive/8b972409bd85f851b280f5334c16aecb7f131e76.tar.gz"
    sha256 "8f67781478a881cd252675b60b774feb1c764a636e43f9638ffafd7ce13fe86b"
  end

  resource "nlohmann_json" do
    url "https://github.com/nlohmann/json/archive/9cca280a4d0ccf0c08f47a99aa71d1b0e52f8d03.tar.gz"
    sha256 "0dbc5e40a01ff142e7e68c03e85247a4dcede2f592d12d3677dee3664d17975a"
  end

  resource "soci" do
    url "https://github.com/SOCI/soci/archive/ce348126e7b8f8f851c0461ec4b5cf8e38f848d6.tar.gz"
    sha256 "09f22c98c135cc212ac9e9dbdc56a604e381adda07d9e4833c0ce3e49996104e"
  end

  resource "spdlog" do
    url "https://github.com/gabime/spdlog/archive/faa0a7a9c5a3550ed5461fab7d8e31c37fd1a2ef.tar.gz"
    sha256 "e471675f9d6eb34caa119617c144f5d34cde4dff95c7d1902d189f027b916a5f"
  end

  resource "speexdsp" do
    url "https://github.com/xiph/speexdsp/archive/738e17905e1ca2a1fa932ddd9c2a85d089f4e845.tar.gz"
    sha256 "92ae2cbc4a532dad364e44ea2245fae5467d96f9132ded2a1b0e0403ba694490"
  end

  resource "tracy" do
    url "https://github.com/wolfpld/tracy/archive/897aec5b062664d2485f4f9a213715d2e527e0ca.tar.gz"
    sha256 "90015cabb607a4ee794f78683c34b8181defd35d982f6a83420638252f284d32"
  end

  resource "utfcpp" do
    url "https://github.com/mumble-voip/utfcpp/archive/e717ac3928b759b79c5e7e403fa2ecbcf4697205.tar.gz"
    sha256 "3ca4539a3b34182c6566e52c41a02a0edf820580e21449f5e074cd1376490fa1"
  end

  def install
    resource("CLI11").stage buildpath/"3rdparty/CLI11"
    resource("cmake-compiler-flags").stage buildpath/"3rdparty/cmake-compiler-flags"
    resource("flag-icons").stage buildpath/"3rdparty/flag-icons"
    resource("minhook").stage buildpath/"3rdparty/minhook"
    resource("nlohmann_json").stage buildpath/"3rdparty/nlohmann_json"
    resource("soci").stage buildpath/"3rdparty/soci"
    resource("spdlog").stage buildpath/"3rdparty/spdlog"
    resource("speexdsp").stage buildpath/"3rdparty/speexdsp"
    resource("tracy").stage buildpath/"3rdparty/tracy"
    resource("utfcpp").stage buildpath/"3rdparty/utfcpp"

    args = %W[
      -DBUILD_NUMBER=#{version.to_s.split(".").last}
      -Dclient=OFF
      -Dserver=ON
      -Dtests=OFF
      -Dplugins=OFF
      -Dice=OFF
      -Dzeroconf=OFF
      -Denable-mysql=OFF
      -Denable-postgresql=OFF
      -Denable-sqlite=ON
      -DOPENSSL_ROOT_DIR=#{formula_opt_prefix("openssl@3")}
      -DCMAKE_PREFIX_PATH=#{formula_opt_prefix("qt")}
    ]

    args << "-DCOMPILER_HAS_MBIG_OBJ=OFF" if OS.linux?

    system "cmake", "-S", ".", "-B", "build", *std_cmake_args, *args
    system "cmake", "--build", "build", "--target", "mumble-server"
    bin.install "build/mumble-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mumble-server --version")
  end
end
