class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.267"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.267/fleet-darwin-arm64"
      sha256 "d5a6cbfa579316cc29065cbe714bbdbb911c7d4b6507e96b0641c2c0c9a3c3a9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.267/fleet-darwin-amd64"
      sha256 "4cacf3dec025b3a1ccb19245a038b9bca15e6a2daafb306c9b185e86e5aecd55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.267/fleet-linux-arm64"
      sha256 "14272251c7bdc2567afa18b0edbc953fae8f1a8c9a8540eefd96c9a7c8cce109"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.267/fleet-linux-amd64"
      sha256 "e7f6984519de302a4efeb10e2cf9bb3f0d9e57f54ef8fae5c244189554f0b21e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
