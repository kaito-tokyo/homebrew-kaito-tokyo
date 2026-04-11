class OpenWebui < Formula
  include Language::Python::Virtualenv

  desc "User-friendly AI Interface (Supports Ollama, OpenAI API, ...)"
  homepage "https://openwebui.com"
  url "https://files.pythonhosted.org/packages/e1/43/fbd8952904e8af68a59f5d875effe41544fed89c6d4a9aa61d2cddb90fb2/open_webui-0.8.12.tar.gz"
  sha256 "9ac96b72e46bdb36c5ae86f12c0e12242d044e1fb543f9f8b5b8f56655fb0cea"

  depends_on "apache-arrow" => :build
  depends_on "cmake" => :build
  depends_on "gcc" => :build
  depends_on "geos" => :build
  depends_on "jpeg" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "npm" => :build
  depends_on "pkgconf" => :build
  depends_on "protobuf" => :build
  depends_on "pybind11" => :build
  depends_on "rust" => :build
  depends_on xcode: :build
  depends_on "abseil"
  depends_on "eigen"
  depends_on "ffmpeg"
  depends_on "freetype"
  depends_on "jpeg-turbo"
  depends_on "libavif"
  depends_on "libimagequant"
  depends_on "libraqm"
  depends_on "libtiff"
  depends_on "libuv"
  depends_on "libxcb"
  depends_on "libyaml"
  depends_on "little-cms2"
  depends_on macos: :monterey
  depends_on "onnx"
  depends_on "openblas"
  depends_on "openjpeg"
  depends_on "protobuf"
  depends_on "python@3.11"
  depends_on "sleef"
  depends_on "webp"
  depends_on "xsimd"

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  on_macos do
    depends_on "libomp"
  end

  on_linux do
    depends_on "patchelf" => :build
    depends_on "zlib-ng-compat"
  end

  resource "pyxlsb" do
    url "https://files.pythonhosted.org/packages/3f/13/eebaeb7a40b062d1c6f7f91d09e73d30a69e33e4baa7cbe4b7658548b1cd/pyxlsb-1.0.10.tar.gz"
    sha256 "8062d1ea8626d3f1980e8b1cfe91a4483747449242ecb61013bc2df85435f685"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/56/db/b8721d71d945e6a8ac63c0fc900b2067181dbb50805958d4d4661cf7d277/pytz-2026.1.post1.tar.gz"
    sha256 "3378dde6a0c3d26719182142c56e60c7f9af7e968076f31aae569d72a0358ee1"
  end

  resource "PyPika" do
    url "https://files.pythonhosted.org/packages/f8/78/cbaebba88e05e2dcda13ca203131b38d3640219f20ebb49676d26714861b/pypika-0.51.1.tar.gz"
    sha256 "c30c7c1048fbf056fd3920c5a2b88b0c29dd190a9b2bee971fd17e4abe4d0ebe"
  end

  resource "pydub" do
    url "https://files.pythonhosted.org/packages/fe/9a/e6bca0eed82db26562c73b5076539a4a08d3cffd19c3cc5913a3e61145fd/pydub-0.25.1.tar.gz"
    sha256 "980a33ce9949cab2a569606b65674d748ecbca4f0796887fd6f46173a7b0d30f"
  end

  resource "peewee" do
    url "https://files.pythonhosted.org/packages/88/b0/79462b42e89764998756e0557f2b58a15610a5b4512fbbcccae58fba7237/peewee-3.19.0.tar.gz"
    sha256 "f88292a6f0d7b906cb26bca9c8599b8f4d8920ebd36124400d0cbaaaf915511f"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "flatbuffers" do
    url "https://files.pythonhosted.org/packages/e8/2d/d2a548598be01649e2d46231d151a6c56d10b964d94043a335ae56ea2d92/flatbuffers-25.12.19-py2.py3-none-any.whl"
    sha256 "7634f50c427838bb021c2d66a3d1168e9d199b0607e6329399f04846d42e20b4"
  end

  resource "Events" do
    url "https://files.pythonhosted.org/packages/25/ed/e47dec0626edd468c84c04d97769e7ab4ea6457b7f54dcb3f72b17fcd876/Events-0.5-py3-none-any.whl"
    sha256 "a7286af378ba3e46640ac9825156c93bdba7502174dd696090fdfcd4d80a1abd"
  end

  resource "durationpy" do
    url "https://files.pythonhosted.org/packages/9d/a4/e44218c2b394e31a6dd0d6b095c4e1f32d0be54c2a4b250032d717647bab/durationpy-0.10.tar.gz"
    sha256 "1fa6893409a6e739c9c72334fc65cca1f355dbdd93405d30f726deb5bde42fba"
  end

  resource "docx2txt" do
    url "https://files.pythonhosted.org/packages/ea/07/4486a038624e885e227fe79111914c01f55aa70a51920ff1a7f2bd216d10/docx2txt-0.9.tar.gz"
    sha256 "18013f6229b14909028b19aa7bf4f8f3d6e4632d7b089ab29f7f0a4d1f660e28"
  end

  resource "Brotli" do
    url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
    sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
  end

  resource "aiocache" do
    url "https://files.pythonhosted.org/packages/7a/64/b945b8025a9d1e6e2138845f4022165d3b337f55f50984fbc6a4c0a1e355/aiocache-0.12.3.tar.gz"
    sha256 "f528b27bf4d436b497a1d0d1a8f59a542c153ab1e37c3621713cb376d44c4713"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/e3/02/0f2892c661036d50ede074e376733dca2ae7c6eb617489437771209d4180/zipp-3.23.0.tar.gz"
    sha256 "a07157588a12518c9d4034df3fbbee09c814741a33ff63c05fa29d26a2404166"
  end

  resource "xxhash" do
    url "https://files.pythonhosted.org/packages/02/84/30869e01909fb37a6cc7e18688ee8bf1e42d57e7e0777636bd47524c43c7/xxhash-3.6.0.tar.gz"
    sha256 "f0162a78b13a0d7617b2845b90c763339d1f1d82bb04a4b07f4ab535cc5e05d6"
  end

  resource "xlsxwriter" do
    url "https://files.pythonhosted.org/packages/46/2c/c06ef49dc36e7954e55b802a8b231770d286a9758b3d936bd1e04ce5ba88/xlsxwriter-3.2.9.tar.gz"
    sha256 "254b1c37a368c444eac6e2f867405cc9e461b0ed97a3233b2ac1e574efb4140c"
  end

  resource "xlrd" do
    url "https://files.pythonhosted.org/packages/07/5a/377161c2d3538d1990d7af382c79f3b2372e880b65de21b01b1a2b78691e/xlrd-2.0.2.tar.gz"
    sha256 "08b5e25de58f21ce71dc7db3b3b8106c1fa776f3024c54e45b45b374e89234c9"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/04/24/4b2031d72e840ce4c1ccb255f693b15c334757fc50023e4db9537080b8c4/websockets-16.0.tar.gz"
    sha256 "5f6261a5e56e8d5c42a4497b364ea24d94d9563e8fbd44e78ac40879c60179b5"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/2c/41/aa4bf9664e4cda14c3b39865b12251e8e7d239f4cd0e3cc1b6c2ccde25c1/websocket_client-1.9.0.tar.gz"
    sha256 "9e813624b6eb619999a97dc7958469217c3176312b3a16a4bd1bc7e08a46ec98"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/35/a2/8e3becb46433538a38726c948d3399905a4c7cabd0df578ede5dc51f0ec2/wcwidth-0.6.0.tar.gz"
    sha256 "cdc4e4262d6ef9a1a57e018384cbeb1208d8abbc64176027e2c2455c81313159"
  end

  resource "validators" do
    url "https://files.pythonhosted.org/packages/53/66/a435d9ae49850b2f071f7ebd8119dd4e84872b01630d6736761e6e7fd847/validators-0.35.0.tar.gz"
    sha256 "992d6c48a4e77c81f1b4daba10d16c3a9bb0dbb79b3a19ea847ff0928e70497a"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/06/f0/18d39dbd1971d6d62c4629cc7fa67f74821b0dc1f5a77af43719de7936a7/uvloop-0.22.1.tar.gz"
    sha256 "6c84bae345b9147082b17371e3dd5d42775bddce91f885499017f4607fdaf39f"
  end

  resource "uuid-utils" do
    url "https://files.pythonhosted.org/packages/7b/d1/38a573f0c631c062cf42fa1f5d021d4dd3c31fb23e4376e4b56b0c9fbbed/uuid_utils-0.14.1.tar.gz"
    sha256 "9bfc95f64af80ccf129c604fb6b8ca66c6f256451e32bc4570f760e4309c9b69"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/8b/2e/c14812d3d4d9cd1773c6be938f89e5735a1f11a9f184ac3639b93cef35d5/tzlocal-5.3.1.tar.gz"
    sha256 "cceffc7edecefea1f595541dbd6e990cb1ea3d19bf01b2809f362a03dd7921fd"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/b7/4d/08c89e34946fce2aec4fbb45c9016efd5f4d7f24af8e5d93296e935631d8/threadpoolctl-3.6.0.tar.gz"
    sha256 "8ab8b4aa3491d812b623328249fab5302a68d2d71745c8a4c719a2fcaba9f44e"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
    sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/7b/ae/2d9c981590ed9999a0d91755b47fc74f74de286b0f5cee14c9269041e6c4/soupsieve-2.8.3.tar.gz"
    sha256 "3267f1eeea4251fb42728b6dfb746edc9acaffc4a45b27e19450b676586e8349"
  end

  resource "socksio" do
    url "https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85/socksio-1.0.0.tar.gz"
    sha256 "f88beb3da5b5c38b9890469de67d0cb0f9d494b78b106ca1845f96c10b91c4ac"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/0d/1c/73e719955c59b8e424d015ab450f51c0af856ae46ea2da83eba51cc88de1/setuptools-81.0.0.tar.gz"
    sha256 "487b53915f52501f0a79ccfd0c02c165ffe06631443a886740b91af4b7a5845a"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/15/15/2e7a025fc62d764b151ae6d0f2a92f8081755ebe8d4a64099accc6f77ba6/sentencepiece-0.2.1.tar.gz"
    sha256 "8138cec27c2f2282f4a34d9a016e3374cd40e5c6e9cb335063db66a0a3b71fad"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/29/9c/6e74567782559a63bd040a236edca26fd71bc7ba88de2ef35d75df3bca5e/safetensors-0.7.0.tar.gz"
    sha256 "07663963b67e8bd9f0b8ad15bb9163606cd27cc5a1b96235a50d8369803b96b0"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/20/af/3f2f423103f1113b36230496629986e0ef7e199d2aa8392452b484b38ced/rpds_py-0.30.0.tar.gz"
    sha256 "dd8ff7cf90014af0c0f787eea34794ebf6415242ee1d6fa91eaba725cc441e84"
  end

  resource "RestrictedPython" do
    url "https://files.pythonhosted.org/packages/5f/1c/aec08bcb4ab14a1521579fbe21ceff2a634bb1f737f11cf7f9c8bb96e680/restrictedpython-8.1.tar.gz"
    sha256 "4a69304aceacf6bee74bdf153c728221d4e3109b39acbfe00b3494927080d898"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/cb/0e/3a246dbf05666918bd3664d9d787f84a9108f6f43cc953a077e4a7dfdb7e/regex-2026.4.4.tar.gz"
    sha256 "e08270659717f6973523ce3afbafa53515c4dc5dcad637dc215b6fd50f689423"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/7b/7f/3759b1d0d72b7c92f0d70ffd9dc962b7b7b5ee74e135f9d7d8ab06b8a318/redis-7.4.0.tar.gz"
    sha256 "64a6ea7bf567ad43c964d2c30d82853f8df927c5c9017766c55a1d1ed95d18ad"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "pytube" do
    url "https://files.pythonhosted.org/packages/d8/e7/16fec46c8d255c4bbc4b185d89c91dc92cdb802836570d8004d0db169c91/pytube-15.0.0.tar.gz"
    sha256 "076052efe76f390dfa24b1194ff821d4e86c17d41cb5562f3a276a8bcbfc9d1d"
  end

  resource "pytokens" do
    url "https://files.pythonhosted.org/packages/b6/34/b4e015b99031667a7b960f888889c5bd34ef585c85e1cb56a594b92836ac/pytokens-0.4.1.tar.gz"
    sha256 "292052fe80923aae2260c073f822ceba21f3872ced9a68bb7953b348e561179a"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/94/01/979e98d542a70714b0cb2b6728ed0b7c46792b695e3eaec3e20711271ca3/python_multipart-0.0.22.tar.gz"
    sha256 "7340bef99a7e0032613f56dc36027b959fd3b30a787ed62d310e951f7c3a3a58"
  end

  resource "python-mimeparse" do
    url "https://files.pythonhosted.org/packages/cd/85/c40f2e0b2128905f6c34894be01803c114f2b2efab0e8b4c3dca5e56b999/python_mimeparse-2.0.0.tar.gz"
    sha256 "5b9a9dcf7aa82465e31bd667f5cb7000604811dce83554f1c8a43693a32cb303"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
  end

  resource "pyproject-hooks" do
    url "https://files.pythonhosted.org/packages/e7/82/28175b2414effca1cdac8dc99f76d660e7a4fb0ceefa4b4ab8f5f6742925/pyproject_hooks-1.2.0.tar.gz"
    sha256 "1e859bd5c40fae9448642dd871adf459e5e2084186e8d2c2a79a824c970da1f8"
  end

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/f6/52/37cc0aa9e9d1bf7729a737a0d83f8b3f851c8eb137373d9f71eafb0a3405/pypdf-6.7.5.tar.gz"
    sha256 "40bb2e2e872078655f12b9b89e2f900888bb505e88a82150b64f9f34fa25651d"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/f3/91/9c6ee907786a473bf81c5f53cf703ba0957b23ab84c264080fb5a450416f/pyparsing-3.3.2.tar.gz"
    sha256 "c777f4d763f140633dcb6d8a3eda953bf7a214dc4eff598413c070bcdc117cbc"
  end

  resource "pypandoc" do
    url "https://files.pythonhosted.org/packages/0b/18/9f5f70567b97758625335209b98d5cb857e19aa1a9306e9749567a240634/pypandoc-1.16.2.tar.gz"
    sha256 "7a72a9fbf4a5dc700465e384c3bb333d22220efc4e972cb98cf6fc723cdca86b"
  end

  resource "PyMySQL" do
    url "https://files.pythonhosted.org/packages/f5/ae/1fe3fcd9f959efa0ebe200b8de88b5a5ce3e767e38c7ac32fb179f16a388/pymysql-1.1.2.tar.gz"
    sha256 "4961d3e165614ae65014e361811a724e2044ad3ea3739de9903ae7c21f539f03"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/5c/5a/b46fa56bf322901eee5b0454a34343cdbdae202cd421775a8ee4e42fd519/pyjwt-2.11.0.tar.gz"
    sha256 "35f95c1f0fbe5d5ba6e43f00271c275f7a1a4db1dab27bf708073b75318ea623"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pyclipper" do
    url "https://files.pythonhosted.org/packages/f6/21/3c06205bb407e1f79b73b7b4dfb3950bd9537c4f625a68ab5cc41177f5bc/pyclipper-1.4.0.tar.gz"
    sha256 "9882bd889f27da78add4dd6f881d25697efc740bf840274e749988d25496c8e1"
  end

  resource "pybase64" do
    url "https://files.pythonhosted.org/packages/aa/b8/4ed5c7ad5ec15b08d35cc79ace6145d5c1ae426e46435f4987379439dfea/pybase64-1.4.3.tar.gz"
    sha256 "c2ed274c9e0ba9c8f9c4083cfe265e66dd679126cd9c2027965d807352f3f053"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/5c/5f/6583902b6f79b399c9c40674ac384fd9cd77805f9e6205075f828ef11fb2/pyasn1-0.6.3.tar.gz"
    sha256 "697a8ecd6d98891189184ca1fa05d1bb00e2f84b5977c481452050549c8a72cf"
  end

  resource "pyarrow" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/47/a2/b7930824181ceadd0c63c1042d01fa4ef63eee233934826a7a2a9af6e463/pyarrow-20.0.0-cp311-cp311-macosx_12_0_arm64.whl"
        sha256 "24ca380585444cb2a31324c546a9a56abbe87e26069189e14bdba19c86c049f0"
      else
        url "https://files.pythonhosted.org/packages/9b/18/c765770227d7f5bdfa8a69f64b49194352325c66a5c3bb5e332dfd5867d9/pyarrow-20.0.0-cp311-cp311-macosx_12_0_x86_64.whl"
        sha256 "95b330059ddfdc591a3225f2d272123be26c8fa76e8c9ee1a77aad507361cfdb"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/58/0d/08a95878d38808051a953e887332d4a76bc06c6ee04351918ee1155407eb/pyarrow-20.0.0-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "b8ff87cc837601532cc8242d2f7e09b4e02404de1b797aee747dd4ba4bd6313f"
    end
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/66/70/e908e9c5e52ef7c3a6c7902c9dfbb34c7e29c25d2f81ade3856445fd5c94/protobuf-6.33.6.tar.gz"
    sha256 "a6768d25248312c297558af96a9f9c929e8c4cee0659cb07e780731095f38135"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/9e/da/e9fc233cf63743258bff22b3dfa7ea5baef7b5bc324af47a0ad89b8ffc6f/propcache-0.4.1.tar.gz"
    sha256 "f48107a8c637e80362555f37ecf49abe20370e557cc4ab374f04ec4423c97c3d"
  end

  resource "primp" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/98/18/ebbe318a926d158c57f9e9cf49bbea70e8f0bd7f87e7675ed68e0d6ab433/primp-1.1.3-cp310-abi3-macosx_11_0_arm64.whl"
        sha256 "61bcb8c53b41e4bac43d04a1374b6ab7d8ded0f3517d32c5cdd5c30562756805"
      else
        url "https://files.pythonhosted.org/packages/ad/6b/36794b5758a0dd1251e67b6ab3ea946e53fa69745e0ecc29facc072ddf5b/primp-1.1.3-cp310-abi3-macosx_10_12_x86_64.whl"
        sha256 "24383cfc267f620769be102b7fa4b64c7d47105f86bd21d047f1e07709e83c6e"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/32/9e/1ec3a9678efcbb51e50d7b4886d9195f956c9fd7f4efcff13ccb152248b0/primp-1.1.3-cp310-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "08eec2f58abbcc1060032a2af81dabacec87a580a364a75862039f7422ac82e6"
    end
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/19/56/8d4c30c8a1d07013911a8fdbd8f89440ef9f08d07a1b50ab8ca8be5a20f9/platformdirs-4.9.4.tar.gz"
    sha256 "1ec356301b7dc906d83f371c8f487070e99d3ccf9e501686456394622a01a934"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
    sha256 "9ad8fa5937ab05218e2b6a4cff30295ad35afd2f83ac592e68c0d871bb0fdbc4"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/fa/36/e27608899f9b8d4dff0617b2d9ab17ca5608956ca44461ac14ac48b44015/pathspec-1.0.4.tar.gz"
    sha256 "0210e2ae8a21a9137c0d470578cb0e595af87edaa6ebf12ff176f14a02e0e645"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "overrides" do
    url "https://files.pythonhosted.org/packages/36/86/b585f53236dec60aba864e050778b25045f857e17f6e5ea0ae95fe80edd2/overrides-7.7.0.tar.gz"
    sha256 "55158fa3d93b98cc75299b1e67078ad9003ca27945c76162c1c0766d6f91820a"
  end

  resource "ormsgpack" do
    url "https://files.pythonhosted.org/packages/12/0c/f1761e21486942ab9bb6feaebc610fa074f7c5e496e6962dea5873348077/ormsgpack-1.12.2.tar.gz"
    sha256 "944a2233640273bee67521795a73cf1e959538e0dfb7ac635505010455e53b33"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/9d/1b/2024d06792d0779f9dbc51531b61c24f76c75b9f4ce05e6f3377a1814cea/orjson-3.11.8.tar.gz"
    sha256 "96163d9cdc5a202703e9ad1b9ae757d5f0ca62f4fa0cc93d1f27b0e180cc404e"
  end

  resource "olefile" do
    url "https://files.pythonhosted.org/packages/69/1b/077b508e3e500e1629d366249c3ccb32f95e50258b231705c09e3c7a4366/olefile-0.47.zip"
    sha256 "599383381a0bf3dfbd932ca0ca6515acd174ed48870cbf7fee123d698c192c1c"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
    sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/6a/51/63fe664f3908c97be9d2e4f1158eb633317598cfa6e1fc14af5383f17512/networkx-3.6.1.tar.gz"
    sha256 "26b7c357accc0c8cde558ad486283728b65b6a95d85ee1cd66bafab4c8168509"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/a2/6e/371856a3fb9d31ca8dac321cda606860fa4548858c0cc45d9d1d4ca2628b/mypy_extensions-1.1.0.tar.gz"
    sha256 "52e68efc3284861e772bbcd66823fde5ae21fd2fdb51c62a211403730b916558"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz"
    sha256 "ec6652a1bee61c53a3e5776b6049172c53b6aaba34f18c9ad04f82712bac623d"
  end

  resource "mmh3" do
    url "https://files.pythonhosted.org/packages/91/1a/edb23803a168f070ded7a3014c6d706f63b90c84ccc024f89d794a3b7a6d/mmh3-5.2.1.tar.gz"
    sha256 "bbea5b775f0ac84945191fb83f845a6fd9a21a03ea7f2e187defac7e401616ad"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "Markdown" do
    url "https://files.pythonhosted.org/packages/2b/f4/69fa6ed85ae003c2378ffa8f6d2e3234662abd02c10d216c0ba96081a238/markdown-3.10.2.tar.gz"
    sha256 "994d51325d25ad8aa7ce4ebaec003febcce822c3f8c911e3b17c52f7f589f950"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/aa/88/262177de60548e5a2bfc46ad28232c9e9cbde697bd94132aeb80364675cb/lxml-6.0.2.tar.gz"
    sha256 "cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/18/c7/af399a2e7a67fd18d63c40c5e62d3af4e67b836a2107468b6a5ea24c4304/jsonpointer-3.1.1.tar.gz"
    sha256 "0b801c7db33a904024f6004d526dcc53bbb8a4a0f4e32bfd10beadf60adf1900"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/41/f2/d34e8b3a08a9cc79a50b2208a93dce981fe615b64d5a4d4abee421d898df/joblib-1.5.3.tar.gz"
    sha256 "8561a3269e6801106863fd0d6d84bb737be9e7631e33aaed3fb9ce5953688da3"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/0d/5e/4ec91646aee381d01cdb9974e30882c9cd3b8c5d1079d6b5ff4af522439a/jiter-0.13.0.tar.gz"
    sha256 "f2839f9c2c7e2dffc1bc5929a510e14ce0a946be9365fd1219e7ef342dae14f4"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/9c/cb/8ac0172223afbccb63986cc25049b154ecfb5e85932587206f42317be31d/itsdangerous-2.2.0.tar.gz"
    sha256 "e0050c0b7da1eea53ffaf149c0cfbb5c6e2e2b69c4bef22c81fa6eb73e5f6173"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "importlib-resources" do
    url "https://files.pythonhosted.org/packages/cf/8c/f834fbf984f691b4f7ff60f50b514cc3de5cc08abfc3295564dd89c5e2e7/importlib_resources-6.5.2.tar.gz"
    sha256 "185f87adef5bcc288449d98fb4fba07cea78bc036455dd44c5fc4a2fe78fed2c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/0f/4c/751061ffa58615a32c31b2d82e8482be8dd4a89154f003147acee90f2be9/httpx_sse-0.4.3.tar.gz"
    sha256 "9b1ed0127459a66014aec3c56bebd93da3c1bc8bb6618c8082039a44889a755d"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/b5/46/120a669232c7bdedb9d52d4aeae7e6c7dfe151e99dc70802e2fc7a5e1993/httptools-0.7.1.tar.gz"
    sha256 "abd72556974f8e7c74a259655924a717a2365b236c882c3f6f8a45fe94703ac9"
  end

  resource "hpack" do
    url "https://files.pythonhosted.org/packages/2c/48/71de9ed269fdae9c8057e5a4c0aa7402e8bb16f2c6e90b3aa53327b113f8/hpack-4.1.0.tar.gz"
    sha256 "ec5eca154f7056aa06f196a557655c5b009b382873ac8d1e66e79e87535f1dca"
  end

  resource "hf-xet" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/0b/f8/7aacb8e5f4a7899d39c787b5984e912e6c18b11be136ef13947d7a66d265/hf_xet-1.4.3-cp37-abi3-macosx_11_0_arm64.whl"
        sha256 "e23717ce4186b265f69afa66e6f0069fe7efbf331546f5c313d00e123dc84583"
      else
        url "https://files.pythonhosted.org/packages/ac/9f/9c23e4a447b8f83120798f9279d0297a4d1360bdbf59ef49ebec78fe2545/hf_xet-1.4.3-cp37-abi3-macosx_10_12_x86_64.whl"
        sha256 "d0da85329eaf196e03e90b84c2d0aca53bd4573d097a75f99609e80775f98025"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/df/9a/a24b26dc8a65f0ecc0fe5be981a19e61e7ca963b85e062c083f3a9100529/hf_xet-1.4.3-cp37-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "fc360b70c815bf340ed56c7b8c63aacf11762a4b099b2fe2c9bd6d6068668c08"
    end
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/03/41/4b9c02f99e4c5fb477122cd5437403b552873f014616ac1d19ac8221a58d/google_crc32c-1.8.0.tar.gz"
    sha256 "a428e25fb7691024de47fecfbff7ff957214da51eddded0da0ae0e0f03a2cf79"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/e1/cf/b50ddf667c15276a9ab15a70ef5f257564de271957933ffea49d2cdbcdfb/fsspec-2026.3.0.tar.gz"
    sha256 "1ee6a0e28677557f8c2f994e3eea77db6392b4de9cd1f5d7a9e87a0ae9d01b41"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/9a/08/7012b00a9a5874311b639c3920270c36ee0c445b69d9989a85e5c92ebcb0/fonttools-4.62.1.tar.gz"
    sha256 "e54c75fd6041f1122476776880f7c3c3295ffa31962dc6ebe2543c00dca58b5d"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/94/b8/00651a0f559862f3bb7d6f7477b192afe3f583cc5e26403b44e59a55ab34/filelock-3.25.2.tar.gz"
    sha256 "b64ece2b38f4ca29dd3e810287aa8c48182bbecd1ae6e9ae126c9b35f1382694"
  end

  resource "fake-useragent" do
    url "https://files.pythonhosted.org/packages/41/43/948d10bf42735709edb5ae51e23297d034086f17fc7279fef385a7acb473/fake_useragent-2.2.0.tar.gz"
    sha256 "4e6ab6571e40cc086d788523cf9e018f618d07f9050f822ff409a4dfe17c16b2"
  end

  resource "et-xmlfile" do
    url "https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9055e934af8d6eb0c2313/et_xmlfile-2.0.0.tar.gz"
    sha256 "dab3f4764309081ce75662649be815c4c9081e88f0837825f90fd28317d4da54"
  end

  resource "einops" do
    url "https://files.pythonhosted.org/packages/2c/77/850bef8d72ffb9219f0b1aac23fbc1bf7d038ee6ea666f331fa273031aa2/einops-0.8.2.tar.gz"
    sha256 "609da665570e5e265e27283aab09e7f279ade90c4f01bcfca111f3d3e13f2827"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/b2/9d/c3b43da9515bd270df0f80548d9944e389870713cc1fe2b8fb35fe2bcefd/docstring_parser-0.17.0.tar.gz"
    sha256 "583de4a309722b3315439bb31d64ba3eebada841f2e2cee23b99df001434c912"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/57/75/31212c6bf2503fdf920d87fee5d7a86a2e3bcf444984126f13d8e4016804/click-8.3.2.tar.gz"
    sha256 "14162b8b3b3550a7d479eafa77dfd3c38d9dc8951f6f69c78913a8f9a7540fd5"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/f3/0d/f7b6ab21ec75897ed80c17d79b15951a719226b9fababf1e40ea74d69079/chardet-5.2.0.tar.gz"
    sha256 "1b3b6ff479a8c414bc3fa2c0852995695c4a026dcd6d0633b2dd092ca39c1cf7"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "bidict" do
    url "https://files.pythonhosted.org/packages/9a/6e/026678aa5a830e07cd9498a05d3e7e650a4f56a42f267a53d22bcda1bdc9/bidict-0.23.1.tar.gz"
    sha256 "03069d763bc387bbd20e7d49914e75fc4132a41937fa3405417e1a5a2d006d71"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/d4/36/3329e2518d70ad8e2e5817d5a4cac6bba05a47767ec416c7d020a965f408/bcrypt-5.0.0.tar.gz"
    sha256 "f748f7c2d6fd375cc93d3fba7ef4a9e3a092421b8dbf34d8d4dc06be9492dfdd"
  end

  resource "backoff" do
    url "https://files.pythonhosted.org/packages/47/d7/5bbeb12c44d7c4f2fb5b56abce497eb5ed9f34d85701de869acedd602619/backoff-2.2.1.tar.gz"
    sha256 "03f829f5bb1923180821643f8753b0502c3b682293992485b0eef2807afa5cba"
  end

  resource "av" do
    url "https://files.pythonhosted.org/packages/b2/eb/abca886df3a091bc406feb5ff71b4c4f426beaae6b71b9697264ce8c7211/av-17.0.0.tar.gz"
    sha256 "c53685df73775a8763c375c7b2d62a6cb149d992a26a4b098204da42ade8c3df"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/a5/ae/136395dfbfe00dfc94da3f3e136d0b13f394cba8f4841120e34226265780/async_timeout-5.0.1.tar.gz"
    sha256 "d9321a7a3d5a6a5e187e824d2fa0793ce379a202935782d555d6e9d2735677d3"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/63/40/f03da1264ae8f7cfdbf9146542e5e7e8100a4c66ab48e791df9a03d3f6c0/asgiref-3.11.1.tar.gz"
    sha256 "5f184dc43b7e763efe848065441eac62229c9f7b0475f41f80e207a114eda4ce"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/26/30/f84a107a9c4331c14b2b586036f40965c128aa4fee4dda5d3d51cb14ad54/aiohappyeyeballs-2.6.1.tar.gz"
    sha256 "c3f9d0113123803ccadfdf3f0faa505bc78e6a72d1cc4806cbd719826e943558"
  end

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/41/c3/534eac40372d8ee36ef40df62ec129bee4fdb5ad9706e58a29be53b2c970/aiofiles-25.1.0.tar.gz"
    sha256 "a8d728f0a29de45dc521f18f07297428d56992a742f0cd2701ba86e44d23d5b2"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/23/6e/beb1beec874a72f23815c1434518bfc4ed2175065173fb138c3705f658d4/yarl-1.23.0.tar.gz"
    sha256 "53b1ea6ca88ebd4420379c330aea57e258408dd0df9af0992e5de2078dc9f5d5"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/c7/79/12135bdf8b9c9367b8701c2c19a14c913c120b882d50b014ca0d38083c2c/wsproto-1.3.2.tar.gz"
    sha256 "b86885dcf294e15204919950f666e06ffc6c7c114ca900b060d6e16293528294"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/32/ce/eeb58ae4ac36fe09e3842eb02e0eb676bf2c53ae062b98f1b2531673efdd/uvicorn-0.41.0.tar.gz"
    sha256 "09d11cf7008da33113824ee5a1c6422d89fbc2ff476540d69a34c87fab8b571a"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "SQLAlchemy" do
    url "https://files.pythonhosted.org/packages/1f/73/b4a9737255583b5fa858e0bb8e116eb94b88c910164ed2ed719147bde3de/sqlalchemy-2.0.48.tar.gz"
    sha256 "5ca74f37f3369b45e1f6b7b06afb182af1fd5dde009e4ffd831830d98cbe5fe7"
  end

  resource "shapely" do
    url "https://files.pythonhosted.org/packages/4d/bc/0989043118a27cccb4e906a46b7565ce36ca7b57f5a18b78f4f1b0f72d9d/shapely-2.1.2.tar.gz"
    sha256 "2ed4ecb28320a433db18a5bf029986aa8afcfd740745e78847e330d5d94922a9"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/7a/97/5a3609c4f8d58b039179648e62dd220f89864f56f7357f5d4f45c29eb2cc/scipy-1.17.1.tar.gz"
    sha256 "95d8e012d8cb8816c226aef832200b1d45109ed4464303e997c5b13122b297c0"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/da/8a/22b7beea3ee0d44b1916c0c1cb0ee3af23b700b6da9f04991899d0c555d4/rsa-4.9.1.tar.gz"
    sha256 "e7bdbfdb5497da4c07dfd35530e1a902659db6ff241e39d9953cad06ebd0ae75"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "rank-bm25" do
    url "https://files.pythonhosted.org/packages/2a/21/f691fb2613100a62b3fa91e9988c991e9ca5b89ea31c0d3152a3210344f9/rank_bm25-0.2.2-py3-none-any.whl"
    sha256 "7bd4a95571adadfc271746fa146a4bcfd89c0cf731e49c3d1ad863290adbe8ae"
  end

  resource "python-pptx" do
    url "https://files.pythonhosted.org/packages/52/a9/0c0db8d37b2b8a645666f7fd8accea4c6224e013c42b1d5c17c93590cd06/python_pptx-1.0.2.tar.gz"
    sha256 "479a8af0eaf0f0d76b6f00b0887732874ad2e3188230315290cd1f9dd9cc7095"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pymdown-extensions" do
    url "https://files.pythonhosted.org/packages/ba/63/06673d1eb6d8f83c0ea1f677d770e12565fb516928b4109c9e2055656a9e/pymdown_extensions-10.21.tar.gz"
    sha256 "39f4a020f40773f6b2ff31d2cd2546c2c04d0a6498c31d9c688d2be07e1767d5"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/e9/e6/78ebbb10a8c8e4b61a59249394a4a594c1a7af95593dc933a349c8d00964/pyasn1_modules-0.4.2.tar.gz"
    sha256 "677091de870a80aae844b1ca6134f54652fa2c8c5a52aa396440ac3106e941e6"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/81/0d/94dfe80193e79d55258345901acd2917523d56e8381bc4dee7fd38e3868a/proto_plus-1.27.2.tar.gz"
    sha256 "b2adde53adadf75737c44d3dcb0104fde65250dfc83ad59168b4aa3e574b6a24"
  end

  resource "peewee-migrate" do
    url "https://files.pythonhosted.org/packages/19/e6/0be63e524945d8f5632734ad62a1f8a4de2b8570fcddb9dea859bc605c20/peewee_migrate-1.14.3.tar.gz"
    sha256 "e31d88225c7e9ba3f28d49c0fc11c3a6f1e11ba8266da7ffe268bede0c51360a"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/4c/77/dd38991db037fdfce45849491cb61de5ab000f49824a00230afb112a4392/opentelemetry_proto-1.40.0.tar.gz"
    sha256 "03f639ca129ba513f5819810f5b1f42bcb371391405d99c168fe6937c62febcd"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
    sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
  end

  resource "opencv-python-headless" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/79/42/2310883be3b8826ac58c3f2787b9358a2d46923d61f88fedf930bc59c60c/opencv_python_headless-4.13.0.92-cp37-abi3-macosx_13_0_arm64.whl"
        sha256 "1a7d040ac656c11b8c38677cc8cccdc149f98535089dbe5b081e80a4e5903209"
      else
        url "https://files.pythonhosted.org/packages/2d/1e/6f9e38005a6f7f22af785df42a43139d0e20f169eb5787ce8be37ee7fcc9/opencv_python_headless-4.13.0.92-cp37-abi3-macosx_14_0_x86_64.whl"
        sha256 "3e0a6f0a37994ec6ce5f59e936be21d5d6384a4556f2d2da9c2f9c5dc948394c"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/92/ce/bd17ff5772938267fd49716e94ca24f616ff4cb1ff4c6be13085108037be/opencv_python_headless-4.13.0.92-cp37-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "0525a3d2c0b46c611e2130b5fdebc94cf404845d8fa64d2f3a3b679572a5bd22"
    end
  end

  resource "opencv-python" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/fc/6f/5a28fef4c4a382be06afe3938c64cc168223016fa520c5abaf37e8862aa5/opencv_python-4.13.0.92-cp37-abi3-macosx_13_0_arm64.whl"
        sha256 "caf60c071ec391ba51ed00a4a920f996d0b64e3e46068aac1f646b5de0326a19"
      else
        url "https://files.pythonhosted.org/packages/08/ac/6c98c44c650b8114a0fb901691351cfb3956d502e8e9b5cd27f4ee7fbf2f/opencv_python-4.13.0.92-cp37-abi3-macosx_14_0_x86_64.whl"
        sha256 "5868a8c028a0b37561579bfb8ac1875babdc69546d236249fff296a8c010ccf9"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fd/55/b3b49a1b97aabcfbbd6c7326df9cb0b6fa0c0aefa8e89d500939e04aa229/opencv_python-4.13.0.92-cp37-abi3-manylinux_2_28_x86_64.whl"
      sha256 "620d602b8f7d8b8dab5f4b99c6eb353e78d3fb8b0f53db1bd258bb1aa001c1d5"
    end
  end

  resource "onnxruntime" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/15/41/3253db975a90c3ce1d475e2a230773a21cd7998537f0657947df6fb79861/onnxruntime-1.24.3-cp311-cp311-macosx_14_0_arm64.whl"
        sha256 "3e6456801c66b095c5cd68e690ca25db970ea5202bd0c5b84a2c3ef7731c5a3c"
      else
        url "https://files.pythonhosted.org/packages/9f/a8/3c23a8f75f93122d2b3410bfb74d06d0f8da4ac663185f91866b03f7da1b/onnxruntime-1.23.2-cp311-cp311-macosx_13_0_x86_64.whl"
        sha256 "87d8b6eaf0fbeb6835a60a4265fde7a3b60157cf1b2764773ac47237b4d48612"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/03/4b/f96b46c1866a293ed23ca2cf5e5a63d413ad3a951da60dd877e3c56cbbca/onnxruntime-1.24.3-cp311-cp311-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "fb56575d7794bf0781156955610c9e651c9504c64d42ec880784b6106244882d"
    end
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/e1/8f/915e1c12df07c70ed779d18ab83d065718a926e70d3ea33eb0cd66ffb7c0/nltk-3.9.3.tar.gz"
    sha256 "cb5945d6424a98d694c2b9a0264519fab4363711065a46aa0ae7a2195b92e71f"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/55/79/de6c16cc902f4fc372236926b0ce2ab7845268dcc30fb2fbb7f71b418631/marshmallow-3.26.2.tar.gz"
    sha256 "bbe2adb5a03e6e3571b573f42527c6fe926e17467833660bebd11593ab8dfd57"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/9e/38/bd5b78a920a64d708fe6bc8e0a2c075e1389d53bef8413725c63ba041535/mako-1.3.10.tar.gz"
    sha256 "99579a6f39583fa7e5630a28c3c1f440e4e97a414b80372649c0ce338da2ea28"
  end

  resource "ldap3" do
    url "https://files.pythonhosted.org/packages/43/ac/96bd5464e3edbc61595d0d69989f5d9969ae411866427b2500a8e5b812c0/ldap3-2.9.1.tar.gz"
    sha256 "f3e7fc4718e3f09dda568b57100095e0ce58633bcabbed8667ce3f8fbaa4229f"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/f3/49/3b30cad09e7771a4982d9975a8cbf64f00d4a1ececb53297f1d9a7be1b10/importlib_metadata-8.7.1.tar.gz"
    sha256 "49fef1ae6440c182052f407c8d34a68f72efc36db9ca90dc0113398f2fdde8bb"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/c1/1f/e86365613582c027dda5ddb64e1010e57a3d53e99ab8a72093fa13d565ec/httplib2-0.31.2.tar.gz"
    sha256 "385e0869d7397484f4eab426197a4c020b606edd43372492337c0b4010ae5d24"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "h2" do
    url "https://files.pythonhosted.org/packages/1d/17/afa56379f94ad0fe8defd37d6eb3f89a25404ffc71d4d848893d270325fc/h2-4.3.0.tar.gz"
    sha256 "6c59efe4323fa18b47a632221a1888bd7fde6249819beda254aeca909f221bf1"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/b7/48/af6173dbca4454f4637a4678b67f52ca7e0c1ed7d5894d89d434fecede05/grpcio-1.80.0.tar.gz"
    sha256 "29aca15edd0688c22ba01d7cc01cb000d72b2033f4a3c72a81a19b56fd143257"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/e5/7b/adfd75544c415c487b33061fe7ae526165241c1ea133f9a9125a56b39fd8/googleapis_common_protos-1.72.0.tar.gz"
    sha256 "e55a601c1b32b52d7a3e65f43563e2aa61bcd737998ee672ac9b951cd49319f5"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/3f/d1/b1ea14b93b6b78f57fc580125de44e9f593ab88dd2460f1a8a8d18f74754/google_resumable_media-2.8.2.tar.gz"
    sha256 "f3354a182ebd193ae3f42e3ef95e6c9b10f128320de23ac7637236713b1acd70"
  end

  resource "ftfy" do
    url "https://files.pythonhosted.org/packages/a5/d3/8650919bc3c7c6e90ee3fa7fd618bf373cbbe55dff043bd67353dbb20cd8/ftfy-6.3.1.tar.gz"
    sha256 "9b3c3d90f84fb267fe64d375a07b7f8912d817cf86009ae134aa03e1819506ec"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/27/f2/72feae0b2827ed38013e4307b14f95bf0b3d124adfef4d38a7d57533f7be/fpdf2-2.8.7.tar.gz"
    sha256 "7060ccee5a9c7ab0a271fb765a36a23639f83ef8996c34e3d46af0a17ede57f9"
  end

  resource "ecdsa" do
    url "https://files.pythonhosted.org/packages/25/ca/8de7744cb3bc966c85430ca2d0fcaeea872507c6a4cf6e007f7fe269ed9d/ecdsa-0.19.2.tar.gz"
    sha256 "62635b0ac1ca2e027f82122b5b81cb706edc38cd91c63dda28e4f3455a2bf930"
  end

  resource "ddgs" do
    url "https://files.pythonhosted.org/packages/06/9e/d89f0c24d78812bad0b4150d9a432925aa756b4bfeb4ef4815fe6ff8f2a6/ddgs-9.11.3.tar.gz"
    sha256 "6098c030d6806217260071d85e38d9b94b99fe326a3c40ebf5de25f620528ae2"
  end

  resource "ctranslate2" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/da/25/41920ccee68e91cb6fa0fc9e8078ab2b7839f2c668f750dc123144cb7c6e/ctranslate2-4.7.1-cp311-cp311-macosx_11_0_arm64.whl"
        sha256 "f74200bab9996b14a57cf6f7cb27d0921ceedc4acc1e905598e3e85b4d75b1ec"
      else
        url "https://files.pythonhosted.org/packages/79/22/bc81fcc9f10ba4da3ffd1a9adec15cfb73cb700b3bbe69c6c8b55d333316/ctranslate2-4.7.1-cp311-cp311-macosx_11_0_x86_64.whl"
        sha256 "59b427eb3ac999a746315b03a63942fddd351f511db82ba1a66880d4dea98e25"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ed/4e/b48f79fd36e5d3c7e12db383aa49814c340921a618ef7364bd0ced670644/ctranslate2-4.7.1-cp311-cp311-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "0ed92d9ab0ac6bc7005942be83d68714c80adb0897ab17f98157294ee0374347"
    end
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "build" do
    url "https://files.pythonhosted.org/packages/6c/1d/ab15c8ac57f4ee8778d7633bc6685f808ab414437b8644f555389cdc875e/build-1.4.2.tar.gz"
    sha256 "35b14e1ee329c186d3f08466003521ed7685ec15ecffc07e68d706090bf161d1"
  end

  resource "black" do
    url "https://files.pythonhosted.org/packages/13/88/560b11e521c522440af991d46848a2bde64b5f7202ec14e1f46f9509d328/black-26.1.0.tar.gz"
    sha256 "d294ac3340eef9c9eb5d29288e96dc719ff269a88e27b396340459dd85da4c58"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz"
    sha256 "6292b1c5186d356bba669ef9f7f051757099565ad9ada5dd630bd9de5fa7fb86"
  end

  resource "APScheduler" do
    url "https://files.pythonhosted.org/packages/07/12/3e4389e5920b4c1763390c6d371162f3784f86f85cd6d6c1bfe68eef14e2/apscheduler-3.11.2.tar.gz"
    sha256 "2a9966b052ec805f020c8c4c3ae6e6a06e24b1bf19f2e11d91d8cca0473eef41"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "youtube-transcript-api" do
    url "https://files.pythonhosted.org/packages/60/43/4104185a2eaa839daa693b30e15c37e7e58795e8e09ec414f22b3db54bec/youtube_transcript_api-1.2.4.tar.gz"
    sha256 "b72d0e96a335df599d67cee51d49e143cff4f45b84bcafc202ff51291603ddcd"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/c2/c9/8869df9b2a2d6c59d79220a4db37679e74f807c559ffe5265e08b227a210/watchfiles-1.1.1.tar.gz"
    sha256 "a173cb5c16c4f40ab19cecf48a534c409f7ea983ab8fed0741304a1c0a31b3f2"
  end

  resource "torch" do
    url "https://github.com/pytorch/pytorch/releases/download/v2.11.0/pytorch-v2.11.0.tar.gz"
    sha256 "ab3fde9e7e382f45ac942be6ea2c2ef362c5ccd6f55ed6d5f35e6ea81d3ab88e"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/7d/ab/4d017d0f76ec3171d469d80fc03dfbb4e48a4bcaddaa831b31d526f05edc/tiktoken-0.12.0.tar.gz"
    sha256 "b18ba7ee2b093863978fcb14f74b3707cdc8d4d4d3836853ce7ec60772139931"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/69/17425771797c36cded50b7fe44e850315d039f28b15901ab44839e70b593/starlette-1.0.0.tar.gz"
    sha256 "6a4beaf1f81bb472fd19ea9b918b50dc3a77a6f2e190a12954b25e6ed5eea149"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/e1/41/9b873a8c055582859b239be17902a85339bec6a30ad162f98c9b0288a2cc/soundfile-0.13.1.tar.gz"
    sha256 "b2c68dab1e30297317080a5b43df57e302584c49e2942defdde0acccc53f0e5b"
  end

  resource "simple-websocket" do
    url "https://files.pythonhosted.org/packages/b0/d4/bfa032f961103eba93de583b161f0e6a5b63cebb8f2c7d0c6e6efe1e3d2e/simple_websocket-1.1.0.tar.gz"
    sha256 "7939234e7aa067c534abdab3a9ed933ec9ce4691b0713c78acb195560aa52ae4"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/0e/d4/40988bf3b8e34feec1d0e6a051446b1f66225f8529b9309becaeef62b6c4/scikit_learn-1.8.0.tar.gz"
    sha256 "9bccbb3b40e3de10351f8f5068e105d0f4083b1a65fa07b6634fbc401a6287fd"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
    sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
    sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
  end

  resource "rapidocr-onnxruntime" do
    url "https://files.pythonhosted.org/packages/ba/12/1e5497183bdbe782dbb91bad1d0d2297dba4d2831b2652657f7517bfc6df/rapidocr_onnxruntime-1.4.4-py3-none-any.whl"
    sha256 "971d7d5f223a7a808662229df1ef69893809d8457d834e6373d3854bc1782cbf"
  end

  resource "python-jose" do
    url "https://files.pythonhosted.org/packages/c6/77/3a1c9039db7124eb039772b935f2244fbb73fc8ee65b9acf2375da1c07bf/python_jose-3.5.0.tar.gz"
    sha256 "fb4eaa44dbeb1c26dcc69e4bd7ec54a1cb8dd64d3b4d81ef08d90ff453f2b01b"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "pycrdt" do
    url "https://files.pythonhosted.org/packages/25/36/dfca55ecfb8c904465b8a2c6b375ca2be79245d2ac0eb6f90ef2b7c4f9b3/pycrdt-0.12.47.tar.gz"
    sha256 "f8d09f4f25057e0e9fa0a5138adc2aab0f72b71b19dde41a0c4f9caba359f521"
  end

  resource "posthog" do
    url "https://files.pythonhosted.org/packages/48/20/60ae67bb9d82f00427946218d49e2e7e80fb41c15dc5019482289ec9ce8d/posthog-5.4.0.tar.gz"
    sha256 "701669261b8d07cdde0276e5bc096b87f9e200e3b9589c5ebff14df658c5893c"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/2e/0c/b28ed414f080ee0ad153f848586d61d1878f91689950f037f976ce15f6c8/pandas-3.0.1.tar.gz"
    sha256 "4186a699674af418f655dbd420ed87f50d56b4cd6603784279d9eef6627823c8"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/51/bc/1559d46557fe6eca0b46c88d4c2676285f1f3be2e8d06bb5d15fbffc814a/opentelemetry_exporter_otlp_proto_common-1.40.0.tar.gz"
    sha256 "1cbee86a4064790b362a86601ee7934f368b81cd4cc2f2e163902a6e7818a0fa"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/2c/1d/4049a9e8698361cc1a1aa03a6c59e4fa4c71e0c0f94a30f988a6876a2ae6/opentelemetry_api-1.40.0.tar.gz"
    sha256 "159be641c0b04d11e9ecd576906462773eb97ae1b657730f0ecf64d32071569f"
  end

  resource "opensearch-protobufs" do
    url "https://files.pythonhosted.org/packages/16/e2/8a09dbdbfe51e30dfecb625a0f5c524a53bfa4b1fba168f73ac85621dba2/opensearch_protobufs-0.19.0-py3-none-any.whl"
    sha256 "5137c9c2323cc7debb694754b820ca4cfb5fc8eb180c41ff125698c3ee11bfc2"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "dataclasses-json" do
    url "https://files.pythonhosted.org/packages/64/a4/f71d9cf3a5ac257c993b5ca3f93df5f7fb395c725e7f1e6479d2514173c3/dataclasses_json-0.6.7.tar.gz"
    sha256 "b6b3e528266ea45b9535223bc53ca645f5208833c29229e847b3f26a1cc55fc0"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/60/04/ee2a9e8542e4fa2773b81771ff8349ff19cdd56b7258a0cc442639052edb/cryptography-46.0.5.tar.gz"
    sha256 "abace499247268e3757271b2f1e244b36b06f8515cf27c4d49468fc9eb16e93d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/0a/ac/7f14b05cf43e4baae99f4570b02e10b2aebf242dfd86245523340390c834/botocore-1.42.85.tar.gz"
    sha256 "2ee61f80b7724a143e16d0a85408ef5fa20b99dce7a3c8ec5d25cc8dced164c1"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/34/83/bbde3faa84ddcb8eb0eca4b3ffb3221252281db4ce351300fe248c5c70b1/azure_core-1.39.0.tar.gz"
    sha256 "8a90a562998dd44ce84597590fff6249701b98c0e8797c95fcdd695b54c35d74"
  end

  resource "argon2-cffi-bindings" do
    url "https://files.pythonhosted.org/packages/5c/2d/db8af0df73c1cf454f71b2bbe5e356b8c1f8041c979f505b3d3186e520a9/argon2_cffi_bindings-25.1.0.tar.gz"
    sha256 "b957f3e6ea4d55d820e40ff76f450952807013d361a65d7f28acc0acbf29229d"
  end

  resource "alembic" do
    url "https://files.pythonhosted.org/packages/94/13/8b084e0f2efb0275a1d534838844926f798bd766566b1375174e2448cd31/alembic-1.18.4.tar.gz"
    sha256 "cb6e1fd84b6174ab8dbb2329f86d631ba9559dd78df550b57804d607672cedbc"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/1c/ce/3b83ebba6b3207a7135e5fcaba49706f8a4b6008153b4e30540c982fae26/aiohttp-3.13.2.tar.gz"
    sha256 "40176a52c186aefef6eb3cad2cdd30cd06e3afbe88fe8ab2af9c0b90f228daca"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/f5/24/cb09efec5cc954f7f9b930bf8279447d24618bb6758d4f6adf2574c41780/typer-0.24.1.tar.gz"
    sha256 "e39b4732d65fbdcde189ae76cf7cd48aeae72919dea1fdfc16593be016256b45"
  end

  resource "starsessions" do
    url "https://files.pythonhosted.org/packages/86/a1/dd738cd47b7a1c681cae49c4f7c88cc953b2aca4de455c2aacda6652e7ce/starsessions-2.2.1.tar.gz"
    sha256 "ce5e4448d9bf2c76222e56cd099ad92d22313e8a4def612e22b71a122cc11da0"
  end

  resource "starlette-compress" do
    url "https://files.pythonhosted.org/packages/a4/6e/204f5ee566b1e3a7461e14698c64facc85a00f3b0aceb67b2af02d16246f/starlette_compress-1.7.0.tar.gz"
    sha256 "7ebfb0555109341f192a773c660e66737c82ca42e7c5ff1cb2a057af0aea3716"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/26/8c/f9290339ef6d79badbc010f067cd769d6601ec11a57d78569c683fb4dd87/sse_starlette-3.3.4.tar.gz"
    sha256 "aaf92fc067af8a5427192895ac028e947b484ac01edbc3caf00e7e7137c7bef1"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/05/04/74127fc843314818edfa81b5540e26dd537353b123a4edc563109d8f17dd/s3transfer-0.16.0.tar.gz"
    sha256 "8e990f13268025792229cd52fa10cb7163744bf56e719e0b9cb925ab79abf920"
  end

  resource "python-engineio" do
    url "https://files.pythonhosted.org/packages/34/12/bdef9dbeedbe2cdeba2a2056ad27b1fb081557d34b69a97f574843462cae/python_engineio-4.13.1.tar.gz"
    sha256 "0a853fcef52f5b345425d8c2b921ac85023a04dfcf75d7b74696c61e940fd066"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/52/6d/fffca34caecc4a3f97bda81b2098da5e8ab7efc9a66e819074a11955d87e/pydantic_settings-2.13.1.tar.gz"
    sha256 "b4c11847b15237fb0171e1462bf540e294affb9b86db4d9aa5c01730bdbe4025"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/6d/c0/4ae7973f3c2cfd2b6e321f1675626f0dab0a97027cc7a297474c9c8f3d04/opentelemetry_semantic_conventions-0.61b0.tar.gz"
    sha256 "072f65473c5d7c6dc0355b27d6c9d1a679d63b6d4b4b16a9773062cb7e31192a"
  end

  resource "opensearch-py" do
    url "https://files.pythonhosted.org/packages/65/9f/d4969f7e8fa221bfebf254cc3056e7c743ce36ac9874e06110474f7c947d/opensearch_py-3.1.0.tar.gz"
    sha256 "883573af13175ff102b61c80b77934a9e937bdcc40cda2b92051ad53336bc055"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/b4/15/203d537e58986b5673e7f232453a2a2f110f22757b15921cbdeea392e520/openai-2.29.0.tar.gz"
    sha256 "32d09eb2f661b38d3edd7d7e1a2943d1633f572596febe64c0cd370c86d52bec"
  end

  resource "msoffcrypto-tool" do
    url "https://files.pythonhosted.org/packages/a6/34/6250bdddaeaae24098e45449ea362fb3555a65fba30cad0ad5630ea48d1a/msoffcrypto_tool-6.0.0.tar.gz"
    sha256 "9a5ebc4c0096b42e5d7ebc2350afdc92dc511061e935ca188468094fdd032bbe"
  end

  resource "langsmith" do
    url "https://files.pythonhosted.org/packages/76/86/6de4f6f0451a9658f26f633e0bb090552a4dafd7df3f1ae7f0d40558e67e/langsmith-0.7.26.tar.gz"
    sha256 "a3e06f3d689ce7195717aa6b8f91082319819ec7ea9b9a62cdcd3d9dc25bfc7b"
  end

  resource "langgraph-sdk" do
    url "https://files.pythonhosted.org/packages/0e/db/77a45127dddcfea5e4256ba916182903e4c31dc4cfca305b8c386f0a9e53/langgraph_sdk-0.3.13.tar.gz"
    sha256 "419ca5663eec3cec192ad194ac0647c0c826866b446073eb40f384f950986cd5"
  end

  resource "kubernetes" do
    url "https://files.pythonhosted.org/packages/2c/8f/85bf51ad4150f64e8c665daf0d9dfe9787ae92005efb9a4d1cba592bd79d/kubernetes-35.0.0.tar.gz"
    sha256 "3d00d344944239821458b9efd484d6df9f011da367ecb155dadf9513f05f09ee"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/ea/80/6a696a07d3d3b0a92488933532f03dbefa4a24ab80fb231395b9a2a1be77/google_auth-2.49.1.tar.gz"
    sha256 "16d40da1c3c5a0533f57d268fe72e0ebb0ae1cc3b567024122651c045d879b64"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/e7/7b/f8e0211e9380f7195ba3f3d40c292594fd81ba8ec4629e3854c353aaca45/fastapi-0.135.1.tar.gz"
    sha256 "d04115b508d936d254cea545b7312ecaa58a7b3a0f84952535b4c9afae7668cd"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/71/24/072ba8e27b0e2d8fec401e9969b429d4f5fc4c8d4f0f05f4661e11f7234a/azure_storage_blob-12.28.0.tar.gz"
    sha256 "e7d98ea108258d29aa0efbfd591b2e2075fa1722a2fae8699f0b3c9de11eff41"
  end

  resource "azure-ai-documentintelligence" do
    url "https://files.pythonhosted.org/packages/44/7b/8115cd713e2caa5e44def85f2b7ebd02a74ae74d7113ba20bdd41fd6dd80/azure_ai_documentintelligence-1.0.2.tar.gz"
    sha256 "4d75a2513f2839365ebabc0e0e1772f5601b3a8c9a71e75da12440da13b63484"
  end

  resource "Authlib" do
    url "https://files.pythonhosted.org/packages/af/98/00d3dd826d46959ad8e32af2dbb2398868fd9fd0683c26e56d0789bd0e68/authlib-1.6.9.tar.gz"
    sha256 "d8f2421e7e5980cc1ddb4e32d3f5fa659cfaf60d8eaf3281ebed192e4ab74f04"
  end

  resource "argon2-cffi" do
    url "https://files.pythonhosted.org/packages/0e/89/ce5af8a7d472a67cc819d5d998aa8c82c5d860608c4db9f46f1162d7dab9/argon2_cffi-25.1.0.tar.gz"
    sha256 "694ae5cc8a42f4c4e2bf2ca0e64e51e23a040c6a517a85074683d3959e1346c1"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/37/7a/8b390dc47945d3169875d342847431e5f7d5fa716b2e37494d57cfc1db10/anthropic-0.86.0.tar.gz"
    sha256 "60023a7e879aa4fbb1fed99d487fe407b2ebf6569603e5047cfe304cebdaa0e5"
  end

  resource "python-socketio" do
    url "https://files.pythonhosted.org/packages/59/81/cf8284f45e32efa18d3848ed82cdd4dcc1b657b082458fbe01ad3e1f2f8d/python_socketio-5.16.1.tar.gz"
    sha256 "f863f98eacce81ceea2e742f6388e10ca3cdd0764be21d30d5196470edf5ea89"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/58/fd/3c3125b20ba18ce2155ba9ea74acb0ae5d25f8cd39cfd37455601b7955cc/opentelemetry_sdk-1.40.0.tar.gz"
    sha256 "18e9f5ec20d859d268c7cb3c5198c8d105d073714db3de50b593b8c1345a48f2"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/3c/aa/5a646093ac218e4a329391d5a31e5092a89db7d2ef1637a90b82cd0b6f94/msal-1.35.1.tar.gz"
    sha256 "70cac18ab80a053bff86219ba64cfe3da1f307c74b009e2da57ef040eb1b5656"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/fc/6d/62e76bbb8144d6ed86e202b5edd8a4cb631e7c8130f3f4893c3f90262b10/mcp-1.26.0.tar.gz"
    sha256 "db6e2ef491eecc1a0d93711a76f28dec2e05999f93afd48795da1c1137142c66"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/13/5c/56d19a252bbb26247b7a7cd20821d48804d7ca03212fec709cd8db7c2516/langchain_core-1.2.27.tar.gz"
    sha256 "c18372e4c4c1454d49bf23a2e484431e71bd39b64173a0f621f0fc283d7183a4"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/cf/65/fb800d327bf25bf31b798dd08935d326d064ecb9b359059fecd91b3a98e8/huggingface_hub-1.9.2.tar.gz"
    sha256 "8d09d080a186bd950a361bfc04b862dfb04d6a2b41d48e9ba1b37507cfd3f1e1"
  end

  resource "google-auth-oauthlib" do
    url "https://files.pythonhosted.org/packages/ac/b4/1b19567e4c567b796f5c593d89895f3cfae5a38e04f27c6af87618fd0942/google_auth_oauthlib-1.3.0.tar.gz"
    sha256 "cd39e807ac7229d6b8b9c1e297321d36fcc8a9e4857dff4301870985df51a528"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/d5/ad/c1f2b1175096a8d04cf202ad5ea6065f108d26be6fc7215876bde4a7981d/google_auth_httplib2-0.3.0.tar.gz"
    sha256 "177898a0175252480d5ed916aeea183c2df87c1f9c26705d74ae6b951c268b0b"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/1a/2e/83ca41eb400eb228f9279ec14ed66f6475218b59af4c6daec2d5a509fe83/google_api_core-2.30.2.tar.gz"
    sha256 "9a8113e1a88bdc09a7ff629707f2214d98d61c7f6ceb0ea38c42a095d02dc0f9"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/f7/7e/c952803c8900f14e6f6158fddbd35da5afb2e3fa68bf498a761e6ba2c2ae/boto3-1.42.62.tar.gz"
    sha256 "6b26ff56c458685caec3d42adde0549f6a55410e557e1f51bebde5c8abcf3037"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/73/6f/f80cfef4a312e1fb34baf7d85c72d4411afde10978d4657f8cdd811d3ccc/tokenizers-0.22.2.tar.gz"
    sha256 "473b83b915e547aa366d1eee11806deaf419e17be16310ac0a14077f1e28f917"
  end

  resource "opentelemetry-exporter-otlp-proto-grpc" do
    url "https://files.pythonhosted.org/packages/8f/7f/b9e60435cfcc7590fa87436edad6822240dddbc184643a2a005301cc31f4/opentelemetry_exporter_otlp_proto_grpc-1.40.0.tar.gz"
    sha256 "bd4015183e40b635b3dab8da528b27161ba83bf4ef545776b196f0fb4ec47740"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/01/99/5d239b6156eddf761a636bded1118414d161bd6b7b37a9335549ed159396/msal_extensions-1.3.1.tar.gz"
    sha256 "c5b0fd10f65ef62b5f1d62f4251d51cbcaf003fcedae8c91b040a488614be1a4"
  end

  resource "langgraph-checkpoint" do
    url "https://files.pythonhosted.org/packages/b1/44/a8df45d1e8b4637e29789fa8bae1db022c953cc7ac80093cfc52e923547e/langgraph_checkpoint-4.0.1.tar.gz"
    sha256 "b433123735df11ade28829e40ce25b9be614930cd50245ff2af60629234befd9"
  end

  resource "langchain-text-splitters" do
    url "https://files.pythonhosted.org/packages/85/38/14121ead61e0e75f79c3a35e5148ac7c2fe754a55f76eab3eed573269524/langchain_text_splitters-1.1.1.tar.gz"
    sha256 "34861abe7c07d9e49d4dc852d0129e26b32738b60a74486853ec9b6d6a8e01d2"
  end

  resource "google-genai" do
    url "https://files.pythonhosted.org/packages/9b/ba/0b343b0770d4710ad2979fd9301d7caa56c940174d5361ed4a7cc4979241/google_genai-1.66.0.tar.gz"
    sha256 "ffc01647b65046bca6387320057aa51db0ad64bcc72c8e3e914062acfa5f7c49"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/dc/24/6ca08b0a03c7b0c620427503ab00353a4ae806b848b93bcea18b6b76fde6/google_cloud_core-2.5.1.tar.gz"
    sha256 "3dc94bdec9d05a31d9f355045ed0f369fbc0d8c665076c734f065d729800f811"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/90/f4/e14b6815d3b1885328dd209676a3a4c704882743ac94e18ef0093894f5c8/google_api_python_client-2.193.0.tar.gz"
    sha256 "8f88d16e89d11341e0a8b199cafde0fb7e6b44260dffb88d451577cbd1bb5d33"
  end

  resource "accelerate" do
    url "https://files.pythonhosted.org/packages/ca/14/787e5498cd062640f0f3d92ef4ae4063174f76f9afd29d13fc52a319daae/accelerate-1.13.0.tar.gz"
    sha256 "d631b4e0f5b3de4aff2d7e9e6857d164810dfc3237d54d017f075122d057b236"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/fc/1a/70e830d53ecc96ce69cfa8de38f163712d2b43ac52fbd743f39f56025c31/transformers-5.3.0.tar.gz"
    sha256 "009555b364029da9e2946d41f1c5de9f15e6b1df46b189b7293f33a161b9c557"
  end

  resource "langgraph-prebuilt" do
    url "https://files.pythonhosted.org/packages/99/4c/06dac899f4945bedb0c3a1583c19484c2cc894114ea30d9a538dd270086e/langgraph_prebuilt-1.0.9.tar.gz"
    sha256 "93de7512e9caade4b77ead92428f6215c521fdb71b8ffda8cd55f0ad814e64de"
  end

  resource "langchain-classic" do
    url "https://files.pythonhosted.org/packages/7c/4b/bd03518418ece4c13192a504449b58c28afee915dc4a6f4b02622458cb1b/langchain_classic-1.0.1.tar.gz"
    sha256 "40a499684df36b005a1213735dc7f8dca8f5eb67978d6ec763e7a49780864fdc"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/f7/b1/4f0798e88285b50dfc60ed3a7de071def538b358db2da468c2e0deecbb40/google_cloud_storage-3.9.0.tar.gz"
    sha256 "f2d8ca7db2f652be757e92573b2196e10fbc09649b5c016f8b422ad593c641cc"
  end

  resource "faster-whisper" do
    url "https://files.pythonhosted.org/packages/05/99/49ee85903dee060d9f08297b4a342e5e0bcfca2f027a07b4ee0a38ab13f9/faster_whisper-1.2.1-py3-none-any.whl"
    sha256 "79a66ad50688c0b794dd501dc340a736992a6342f7f95e5811be60b5224a26a7"
  end

  resource "chromadb" do
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://files.pythonhosted.org/packages/85/b3/db3e5a8a47106d339c3e109e73859647969a81e9c54ca15bc6dde6685c1e/chromadb-1.5.2-cp39-abi3-macosx_11_0_arm64.whl"
        sha256 "8e6a12adb34bf441f8cc368b6460fbc9e14bee5cf926f34e752da759d68dec56"
      else
        url "https://files.pythonhosted.org/packages/6b/3b/36989e7ebfa2ee10a85deacd423989b07f9e3bd176846863ace1305e9460/chromadb-1.5.2-cp39-abi3-macosx_10_12_x86_64.whl"
        sha256 "a898ab200f9a22a16751eed5444dac330f1f82184264e16d5420e41e0afe63e4"
      end
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ae/74/b8cd9d9bc72c545a579fd1f7bb44558a801ed5f5bab164a25eea16d51ad9/chromadb-1.5.2-cp39-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "e48e5b0f300d6f709446a5d9299614e3b6bca997772d810e1298b76b0c4e7dbb"
    end
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/c2/3a/439a32a5e23e45f6a91f0405949dc66cfe6834aba15a430aebfc063a81e7/azure_identity-1.25.2.tar.gz"
    sha256 "030dbaa720266c796221c6cdbd1999b408c079032c919fef725fcc348a540fe9"
  end

  resource "sentence-transformers" do
    url "https://files.pythonhosted.org/packages/5b/30/21664028fc0776eb1ca024879480bbbab36f02923a8ff9e4cae5a150fa35/sentence_transformers-5.2.3.tar.gz"
    sha256 "3cd3044e1f3fe859b6a1b66336aac502eaae5d3dd7d5c8fc237f37fbf58137c7"
  end

  resource "langgraph" do
    url "https://files.pythonhosted.org/packages/55/92/14df6fefba28c10caf1cb05aa5b8c7bf005838fe32a86d903b6c7cc4018d/langgraph-1.0.10.tar.gz"
    sha256 "73bd10ee14a8020f31ef07e9cd4c1a70c35cc07b9c2b9cd637509a10d9d51e29"
  end

  resource "langchain-community" do
    url "https://files.pythonhosted.org/packages/53/97/a03585d42b9bdb6fbd935282d6e3348b10322a24e6ce12d0c99eb461d9af/langchain_community-0.4.1.tar.gz"
    sha256 "f3b211832728ee89f169ddce8579b80a085222ddb4f4ed445a46e977d17b1e85"
  end

  resource "langchain" do
    url "https://files.pythonhosted.org/packages/16/22/a4d4ac98fc2e393537130bbfba0d71a8113e6f884d96f935923e247397fe/langchain-1.2.10.tar.gz"
    sha256 "bdcd7218d9c79a413cf15e106e4eb94408ac0963df9333ccd095b9ed43bf3be7"
  end

  def install
    python = (Formula["python@3.11"].opt_bin/"python3.11").to_s
    venv = virtualenv_create(libexec, python, system_site_packages: true, without_pip: true)

    def venv.pip_install(targets, build_isolation: true)
      targets = Array(targets)
      targets.each do |t|
        if t.is_a?(Resource)
          t.stage do
            target = Pathname.pwd
            if t.url&.match?(/([.-]py3[^-]*|[.-]cp\d+)[^-]*-([^-]*-)?any\.whl$|macosx_.*\.whl$/)
              target /= t.downloader.basename
            end
            do_install(target, build_isolation:)
          end
        else
          t = t.lines.map(&:strip) if t.is_a?(String) && t.include?("\n")
          do_install(t, build_isolation:)
        end
      end
    end

    resources.each do |r|
      case r.name
      when "numpy"
        r.stage do
          args = %w[
            -Csetup-args=-Dblas=openblas
            -Csetup-args=-Dlapack=openblas
          ]
          system python, "-m", "pip", "--python=#{libexec}/bin/python", "install", *args,
*std_pip_args(prefix: false, build_isolation: true), Pathname.pwd
        end
      when "pillow"
        pillow_env = {}
        pillow_env.extend SharedEnvExtension

        pillow_env["CPPFLAGS"] = ENV["CPPFLAGS"].to_s
        pillow_env["LDFLAGS"] = ENV["LDFLAGS"].to_s
        pillow_env["MAX_CONCURRENCY"] = ENV.make_jobs.to_s

        deps.each do |dep|
          next if dep.build? || dep.test?

          pillow_env.prepend "CPPFLAGS", "-I#{dep.to_formula.opt_include}"
          pillow_env.prepend "LDFLAGS", "-L#{dep.to_formula.opt_lib}"
        end

        with_env(pillow_env) do
          r.stage do
            args = %w[
              -Cdebug=true
              -Ctiff=enable
              -Cfreetype=enable
              -Clcms=enable
              -Cwebp=enable
              -Cxcb=enable
              -Cavif=enable
            ]
            system python, "-m", "pip", "--python=#{libexec}/bin/python", "install", *args,
  *std_pip_args(prefix: false, build_isolation: true), Pathname.pwd
          end
        end
      when "torch"
        torch_env = {}
        torch_env.extend SharedEnvExtension

        torch_env["ATEN_NO_TEST"] = "ON"
        torch_env["BLAS"] = "OpenBLAS"
        torch_env["BUILD_CUSTOM_PROTOBUF"] = "OFF"
        torch_env["BUILD_PYTHON"] = "ON"
        torch_env["BUILD_TEST"] = "OFF"
        torch_env["OpenBLAS_HOME"] = Formula["openblas"].opt_prefix
        torch_env["PYTHON_EXECUTABLE"] = which(python)
        torch_env["PYTORCH_BUILD_VERSION"] = r.version.to_s
        torch_env["PYTORCH_BUILD_NUMBER"] = "1"
        torch_env["USE_CCACHE"] = "OFF"
        torch_env["USE_CUDA"] = "OFF"
        torch_env["USE_DISTRIBUTED"] = "ON"
        torch_env["USE_MKLDNN"] = "OFF"
        torch_env["USE_NNPACK"] = "OFF"
        torch_env["USE_OPENMP"] = "ON"
        torch_env["USE_SYSTEM_EIGEN_INSTALL"] = "ON"
        torch_env["USE_SYSTEM_ONNX"] = "ON"
        torch_env["USE_SYSTEM_PYBIND11"] = "OFF"
        torch_env["USE_SYSTEM_SLEEF"] = "ON"
        torch_env["USE_MPS"] = "ON" if OS.mac?
        torch_env["USE_KLEIDIAI"] = "OFF"

        # Workaround for
        # error: a template argument list is expected after a name prefixed by the template keyword
        torch_env.append_to_cflags "-Wmissing-template-arg-list-after-template-kw"

        torch_env.runtime_cpu_detection if OS.linux? && Hardware::CPU.arch == :arm64

        with_env(torch_env) do
          r.stage do
            # Avoid building AVX512 code
            inreplace "cmake/Modules/FindAVX.cmake", /^CHECK_SSE\(CXX "AVX512"/, "#\\0"

            # Disable SVE support as it requires enabling support in `sleef` formula.
            # This is not recommended as SLEEF is moving SVE support to unmaintained status:
            # https://github.com/shibatch/sleef/discussions/673#discussioncomment-12610711
            inreplace "cmake/Modules/FindARM.cmake", /^\s*CHECK_COMPILES\(CXX "SVE256"/, "#\\0"

            # Avoid bundling libomp
            inreplace "setup.py", /^(\s*)self\._embed_libomp\(\)$/, "\\1pass"

            # Avoid references to Homebrew shims
            inreplace "caffe2/core/macros.h.in", "${CMAKE_CXX_COMPILER}", ENV.cxx

            system python, "-m", "pip", "--python=#{libexec}/bin/python", "install",
  *std_pip_args(prefix: false, build_isolation: false), Pathname.pwd
          end
        end
      else
        venv.pip_install r
      end
    end

    venv.pip_install_and_link(T.must(buildpath), link_manpages: true)
  end

  def post_install
    (var/"open-webui").mkpath
  end

  service do
    run [opt_bin/"open-webui", "serve"]
    keep_alive true
    environment_variables DATA_DIR: var/"open-webui"
    working_dir var/"open-webui"
  end

  test do
    system opt_bin/"open-webui", "--help"
  end
end
