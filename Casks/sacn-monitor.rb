cask "sacn-monitor" do
  version "1.1.0"
  sha256 "3ec09eb5546a3ab6322a50406876b79b650dd483d4ba8ed9a6c96d76722c5799"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end