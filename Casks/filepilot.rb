cask "filepilot" do
  version "1.0.0"
  sha256 "cd5309d9853400ced5f0dac7b5a2635568a900902bed673d9be885c993c2a07c"

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
