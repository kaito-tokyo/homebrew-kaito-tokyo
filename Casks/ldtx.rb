cask "ldtx" do
  version "0.2.17"
  sha256 "5812607dc3f7834cc708ec051f2394a6badcc8e1c0fb13724e1af8968a0cb14c"

  url "https://github.com/kaito-tokyo/LDTX/releases/download/v#{version}/LDTX-v#{version}.dmg"
  name "LDTX"
  desc "Lightweight definitive stream transmitter"
  homepage "https://github.com/kaito-tokyo/LDTX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "LDTX.app"

  zap trash: [
    "~/Library/Application Scripts/tokyo.kaito.ldtx.*",
    "~/Library/Containers/tokyo.kaito.ldtx.*",
  ]
end
