class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.215"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.215/fleet-darwin-arm64"
      sha256 "57cd9536f0bdce23e2dceac053d616722629372cee59d6dcbffc24e258dbfb65"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.215/fleet-darwin-amd64"
      sha256 "8e36e9db75130b31b1516b704a54c601f1ccba03d494c5ba6e7dc0593e8b4f8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.215/fleet-linux-arm64"
      sha256 "931f571e9772636ffb4b9322cc5aedb4166a6231578f6652fa3b7d41c87cf6c6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.215/fleet-linux-amd64"
      sha256 "23104927cc5235982a25e369aa19435038dad699810bf31c1375dc479f4efa17"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
