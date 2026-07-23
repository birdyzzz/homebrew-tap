cask "filepilot" do
  version "1.0.0"
  sha256 "4da6115d82db5452b4e1b9148ecadee80bf2887ff9a704e1fc8140345b580655"

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
