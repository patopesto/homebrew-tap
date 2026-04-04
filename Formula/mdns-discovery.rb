class MdnsDiscovery < Formula
  desc "TUI for discovering mDNS/Zeroconf/Bonjour devices on your local network"
  homepage "https://gitlab.com/patopest/mdns-discovery"
  version "1.1.0"
  url "https://gitlab.com/patopest/mdns-discovery/-/archive/v#{version}/mdns-discovery-v#{version}.tar.gz"
  sha256 "48aec809d445db87df5405dd4af9457acad71177de1f57bdbe635738c56c5211"
  license "MIT"
  head "https://gitlab.com/patopest/mdns-discovery.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.Version=#{version}
      -X main.Branch=master
      -X main.BuildDate=#{time.iso8601}
    ]
    system "go", "build", "-trimpath", *std_go_args(ldflags:), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdns-discovery --version")
  end
end
