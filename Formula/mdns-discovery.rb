class MdnsDiscovery < Formula
  desc "TUI for discovering mDNS/Zeroconf/Bonjour devices on your local network"
  homepage "https://gitlab.com/patopest/mdns-discovery"
  version "1.1.0"
  url "https://gitlab.com/patopest/mdns-discovery/-/archive/v#{version}/mdns-discovery-v#{version}.tar.gz"
  license "MIT"
  head "https://gitlab.com/patopest/mdns-discovery.git", branch: "master"

  ## Pre-built binaries
  on_macos do
    on_arm do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_arm64.tar.gz"
      sha256 "29525b15c74372e6d183db88a339cbb22094a31aa36a8fee5b0a5f1fb12962ec"
    end
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_x86_64.tar.gz"
      sha256 "1ac68ea6e9d9553ede6947297915b669cdfbdd51bfb70fc001fa75e005f011a8"
    end
  end

  on_linux do
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_x86_64.tar.gz"
      sha256 "59eac6efb1e20e9a000c8e8c92cdb74df663d5a6eb2ae8cd73e684ae5a06c1dd"
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_arm64.tar.gz"
        sha256 "daf36023529bba7d02987979bf259e4b47badfb708a59f34d3f5d6f36252305a"
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
