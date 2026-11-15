class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.229"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.229/fleet-darwin-arm64"
      sha256 "6615c8b9f1acea68fc15413b47de44004183581111e18d7bb945bee51c1e256f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.229/fleet-darwin-amd64"
      sha256 "aefff3085c1738f466830c3ca546ad0bc5ec1dcf86338a5407f1ec37a7cdb3cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.229/fleet-linux-arm64"
      sha256 "b2e0229a6aa988507de128dfaf74c60dbeb4025381505e3b4ecc6cb356db23ee"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.229/fleet-linux-amd64"
      sha256 "27bd7a54465300125852dfac6277c148d168eee3e3e1282c9dd5698d48cbe8c6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
