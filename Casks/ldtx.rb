cask "ldtx" do
  version "0.2.16"
  sha256 "d319cdb351ca64cc67b3048dc733715812a1f855ad6807c8dabcd27d14003735"

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
