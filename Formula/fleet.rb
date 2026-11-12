class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.117"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.117/fleet-darwin-arm64"
      sha256 "e6cb7999794e12501757332c4a5fd74d9d1073c437833a74cb22a0bada7796ae"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.117/fleet-darwin-amd64"
      sha256 "10485179e255209ca6485d3cf084c8754e2a9b705c02712b3846581f04785d4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.117/fleet-linux-arm64"
      sha256 "134970a4d4ddf23f4107ac74fe2ba2268e9d697d1a9d19a2dcab69267bf12b87"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.117/fleet-linux-amd64"
      sha256 "998d18c1482201396fabd75569c6f34e54957f5639529a9b0bc18b600fdb9074"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
