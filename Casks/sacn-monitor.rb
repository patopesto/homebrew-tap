cask "sacn-monitor" do
  version "1.3.0"
  sha256 "b3e5b68b6b595dfc8c75ff826d8a5899a8c6d23488719a1aecf085225b1b8459"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end