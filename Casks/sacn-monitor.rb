cask "sacn-monitor" do
  version "1.4.0"
  sha256 "b87881bbf7b285e250e7130ff399d31b8eff665a31cdc6e350a83b80c46158d2"
  url "https://gitlab.com/patopest/sacn-monitor/-/releases/v#{version}/downloads/macos-universal"
  
  name "sACN Monitor"
  desc "A tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  app "sACN Monitor.app"
end