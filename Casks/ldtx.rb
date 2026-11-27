cask "ldtx" do
  version "0.2.15"
  sha256 "3693c3b705e7caebc3515fee2a43e17b5cca7b1909dec737ce52d938f78cb32c"

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
