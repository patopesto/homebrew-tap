cask "sacn-monitor" do
  version "2.0.0"
  sha256 arm:          "89c02b90e89ec2750892097faa7fcfe62dcfdb18ca3c74db8733566013eb0d52",
         intel:        "ca2fcc7aa006d9d2c37e7d04f56944746ba27e18e474c3ae7e4096291e8322ab",
         arm64_linux:  "4478aaf4cff103afcc304ffef491bdede4aa50f835e875992f014f4976a3526f",
         x86_64_linux: "9e05eb591567f04d161f1786c3977a1ca09d6cde980bc44880b6c15c0c373de2"

  arch arm:   "arm64",
       intel: "amd64"
  os  macos: "darwin",
      linux: "linux"
  url_end = on_system_conditional macos: "dmg",
                                  linux: "AppImage"

  on_macos do
    app "sACN Monitor.app"
  end
  on_linux do
    app_image "sACN-Monitor_v#{version}_linux_#{arch}.AppImage", target: "sACN-Monitor.AppImage"
  end

  url "https://gitlab.com/api/v4/projects/patopest%2Fsacn-monitor/packages/generic/sACN-Monitor/v#{version}/sACN-Monitor_v#{version}_#{os}_#{arch}.#{url_end}"
  
  name "sACN Monitor"
  desc "Tool to view sACN (ANSI E1.11) DMX data"
  homepage "https://gitlab.com/patopest/sacn-monitor"

  livecheck do
    url "https://gitlab.com/patopest/sacn-monitor.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
