class MdnsDiscovery < Formula
  desc "TUI for discovering mDNS/Zeroconf/Bonjour devices on your local network"
  homepage "https://gitlab.com/patopest/mdns-discovery"
  version "1.1.2"
  url "https://gitlab.com/patopest/mdns-discovery/-/archive/v#{version}/mdns-discovery-v#{version}.tar.gz"
  license "MIT"
  head "https://gitlab.com/patopest/mdns-discovery.git", branch: "master"

  ## Pre-built binaries
  on_macos do
    on_arm do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_arm64.tar.gz"
      sha256 "955049a677c29458002bfdc7724bb82ef79af785efe5bbdcf0bc491e53e9e265"
    end
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_x86_64.tar.gz"
      sha256 "d07bf17e52d1b66e00de41ba8f38d1820ca6f0ba1c9313a6b526074b2d0cbd82"
    end
  end

  on_linux do
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_x86_64.tar.gz"
      sha256 "c8449ad025c035f4ae926af9f9fa5032f276a012cd97ed2c0583e0e2594b79df"
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_arm64.tar.gz"
        sha256 "72c221775008ec36fba30bb62004c0dcf9d4beac4496a4f9ed9b634702e7d709"
      end
    end
  end


  def install
    bin.install "mdns-discovery"
  end


  ## For building from source
  # depends_on "go" => :build

  # def install
  #   ldflags = %W[
  #     -s -w
  #     -X main.Version=#{version}
  #     -X main.Branch=master
  #     -X main.BuildDate=#{time.iso8601}
  #   ]
  #   system "go", "build", "-trimpath", *std_go_args(ldflags:), "."
  # end

  # test do
  #   assert_match version.to_s, shell_output("#{bin}/mdns-discovery --version")
  # end
end
