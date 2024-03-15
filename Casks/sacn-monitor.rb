cask "sacn-monitor" do
  version "1.0.0"
  sha256 "e71f101f6ea4a9747355b1fdfd5b9a25e4307bda12a1361e1c7b69d23e22c321"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end