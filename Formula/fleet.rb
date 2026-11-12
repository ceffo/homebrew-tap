class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.68"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.68/fleet-darwin-arm64"
      sha256 "99a630c371b4417c85ae45ecc20d92025227bc087bee801b3edb9867a3ae6620"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.68/fleet-darwin-amd64"
      sha256 "728be16570565b8c38f6577fbed7a8ef4c62c257fbdba64473264a2702702047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.68/fleet-linux-arm64"
      sha256 "bf7a8a39e6cc9bb7740d1690db3658791d75d7490e33fb583bcce33d085d4be1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.68/fleet-linux-amd64"
      sha256 "fabb46d61b1152037ed06e67728d6769cc880ae6d44369cc49f2c1c1c07d3194"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
