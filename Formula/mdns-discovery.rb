class MdnsDiscovery < Formula
  desc "A small TUI app to discover mDNS/Zeroconf/Bonjour services and devices on your network.  "
  homepage "https://gitlab.com/patopest/mdns-discovery"
  license "MIT"
  version "v1.0.0"

  on_macos do
    on_arm do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v1.0.0/downloads/mdns-discovery_1.0.0_Darwin_arm64.tar.gz"
      sha256 "b4286ffccf74908ce1100c037d122fe2b945e68b1cf7134b5824fe74765ec1cb"
    end
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v1.0.0/downloads/mdns-discovery_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "418f2acc729d96e39ebb68e22c9801f275cfe5d9e9383a45f7d055f4312d370f"
    end
  end

  on_linux do
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v1.0.0/downloads/mdns-discovery_1.0.0_Linux_x86_64.tar.gz"
      sha256 "04a66b54bb24a76479191fe4a0c3b99f4dce743d33392fa62127ec3158f2461b"
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://gitlab.com/patopest/mdns-discovery/-/releases/v1.0.0/downloads/mdns-discovery_1.0.0_Linux_arm64.tar.gz"
        sha256 "29b953a9721b81ca507bd32c1afa209f5e915b134c6c76c17f0321e4ddb7cd35"
      end
    end
  end


  def install
    bin.install "mdns-discovery"
  end

end