cask "sacn-monitor" do
  version "1.4.0"
  sha256 "b84d616b8a4108415a137be0fda8e8ff5230eac45950a7ce3bcd09ae0c4c3f98"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end