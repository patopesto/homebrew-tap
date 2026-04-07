class MdnsDiscovery < Formula
  desc "TUI for discovering mDNS/Zeroconf/Bonjour devices on your local network"
  homepage "https://gitlab.com/patopest/mdns-discovery"
  version "1.1.1"
  url "https://gitlab.com/patopest/mdns-discovery/-/archive/v#{version}/mdns-discovery-v#{version}.tar.gz"
  license "MIT"
  head "https://gitlab.com/patopest/mdns-discovery.git", branch: "master"

  ## Pre-built binaries
  on_macos do
    on_arm do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_arm64.tar.gz"
      sha256 "13bae7b5f1ff52ea574c9b924a7dd47ffc09573028f712b812c388c48154c636"
    end
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Darwin_x86_64.tar.gz"
      sha256 "c661317f99dc9b3f08aaecd99503363ad5d1811ecfc96d4cfa967bed16299ba0"
    end
  end

  on_linux do
    on_intel do
      url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_x86_64.tar.gz"
      sha256 "2f3d3b34f458789690eff7b9b37ead6679ab2387927b4181cc79309de176db48"
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://gitlab.com/patopest/mdns-discovery/-/releases/v#{version}/downloads/mdns-discovery_#{version}_Linux_arm64.tar.gz"
        sha256 "858f6febd4ed0b1883448249782803b2acc16ce9164885d45239022837f6cf85"
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
