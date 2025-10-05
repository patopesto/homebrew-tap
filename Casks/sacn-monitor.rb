cask "sacn-monitor" do
  version "1.5.0"
  sha256 "7189be73fc31d344d041300e69d79457e217c538d23dfed6868913fe1cdda418"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end