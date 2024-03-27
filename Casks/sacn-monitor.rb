cask "sacn-monitor" do
  version "1.2.0"
  sha256 "960d7c3c66660cf511acfe7b8f6f4c3eafc13708172bb05ff273a2a893054021"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end