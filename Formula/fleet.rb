class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.333"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.333/fleet-darwin-arm64"
      sha256 "1f87b3c42dcdf546d400ca9057d0fc09d14f455f56d7e0e4f39d63a8fd9e6fad"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.333/fleet-darwin-amd64"
      sha256 "c7d0bfb6d30299202a0794f557dfe291ccb0b68167de4bd75b41889513861b05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.333/fleet-linux-arm64"
      sha256 "b492c7ca6efea91df1b74a5b43b003eddb9fb12670f4ab27d86cfe9bbb70da42"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.333/fleet-linux-amd64"
      sha256 "7e41ec64e939ce6a1cdfcb8ac0e38a74cb09cddc2dede9b25679626e4cf48f40"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
