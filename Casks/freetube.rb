# Copied from https://github.com/Homebrew/homebrew-cask/blob/master/Casks/f/freetube.rb
cask "freetube" do
  version "0.26.0"
  sha256 arm:   "16b49e40297e35806aec173d2f2a9f2bf85e1e377207d40ac365c59e7a73a8b2",
         intel: "2e9343898c6a33acf7e48f81c24d97c7fe45cb7c942ab6e27c509118a03b18cb"

  arch arm: "arm64", intel: "x64"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-beta-mac-#{arch}.dmg"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  app "FreeTube.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-d", "-r", "com.apple.quarantine", "{{appdir}}/FreeTube.app"]
  end

  uninstall quit: "io.freetubeapp.freetube"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.freetubeapp.freetube.sfl*",
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]

  name "FreeTube"
  desc "YouTube player focusing on privacy"
  homepage "https://freetubeapp.io/"
end
