class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.166"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.166/fleet-darwin-arm64"
      sha256 "fe59c72fa6962bf01f07a974114a235378dec94e60ed86a36c7bffb3e3590d90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.166/fleet-darwin-amd64"
      sha256 "7f1caa35c41c432c6d45b4f65914b5e70fe5e4176aec80aacfb46ab7dea7968e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.166/fleet-linux-arm64"
      sha256 "74fb85e5d864c257b7d8241c91420c06fa212027c5b605a68f3dbfbf569e6a04"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.166/fleet-linux-amd64"
      sha256 "ef78a4ef452ed55f11ed7f6100531f338e8e3cb7f3356d5b5f27f21bce54ff6b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
