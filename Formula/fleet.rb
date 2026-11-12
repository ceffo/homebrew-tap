class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.116"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.116/fleet-darwin-arm64"
      sha256 "bf657ad6a55e258e767227a9d439cd55d61d6b2c3a1363b87fcf0466f9f838da"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.116/fleet-darwin-amd64"
      sha256 "13f51ea06946d43c3b8c1225fd20bd954d0c94003bb21edd1f075ed72bea1f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.116/fleet-linux-arm64"
      sha256 "8712f08667e95e3c2db0079827a46f43a1fb0e015ed9863dd8f407d13bdc756b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.116/fleet-linux-amd64"
      sha256 "83f8a3bb03ce2bb524943d55d899e5abcd1ee71d710ef91a7e215ce80e79f0b2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
