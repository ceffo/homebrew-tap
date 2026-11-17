class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.282"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.282/fleet-darwin-arm64"
      sha256 "e50f9a2b6dae301c2bafbc1c1991149b2d368b2bb21ce3da1ebb3e90132421df"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.282/fleet-darwin-amd64"
      sha256 "e3585eea37cb950a6a728c753c8c788d9c30c5c38cdf4a91dac07f185d2c7c96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.282/fleet-linux-arm64"
      sha256 "c44ab3ab97dd74b8353895779f8aef39f2027fc2815c916bc8c65ba42fb5c1fc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.282/fleet-linux-amd64"
      sha256 "aefcbc5a2ee9c8808346db9aa05cdd813696c489e88e231521f6ade964060597"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
