cask "filepilot" do
  version "1.0.0"
  sha256 "b742e8f9b15b33d552b1994b64f5e909f775499fd9761c8ae8c28c26b2f7a298"

  url "https://github.com/birdyzzz/FilePilot/releases/download/v#{version}/FilePilot-#{version}-macOS.zip"
  name "FilePilot"
  desc "Native macOS utility for managing file type associations"
  homepage "https://github.com/birdyzzz/FilePilot"

  depends_on macos: :sequoia

  app "FilePilot.app"

  livecheck do
    url :homepage
    strategy :github_latest
  end
end
