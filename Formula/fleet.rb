class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.402"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.402/fleet-darwin-arm64"
      sha256 "f0ff2674055d0da1d94c8bd01a918c6edb4b60f6a7c68a5c53f63a7a3bed5663"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.402/fleet-darwin-amd64"
      sha256 "552acfce18b768bbd3f358a8e3c0f14b977ad76cbe425993e64b1432c8bfe30f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.402/fleet-linux-arm64"
      sha256 "6314613a4714c2417e80074e4ef16b5b72c7f3ce5140d16f355963a45066951d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.402/fleet-linux-amd64"
      sha256 "0fd9383ce26162da4ac0662e5c4be086663b9bd450eed7a6a2368302dc332dee"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
