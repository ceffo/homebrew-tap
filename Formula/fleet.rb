class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.382"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.382/fleet-darwin-arm64"
      sha256 "c11456370c9860bfea1f7cef9f521d45970e5329b3f77896080998dfa4bdd4b7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.382/fleet-darwin-amd64"
      sha256 "9e5ae5a38429307d5c2279b29e33ca13b05d611a3742bb6d4feb840d0f24bcad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.382/fleet-linux-arm64"
      sha256 "4d0bd7e256b91c97c467146c5a3778c2133d0536eceacd38da4d6741e671da6f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.382/fleet-linux-amd64"
      sha256 "8d9a3b96a985b2ec05499ce51398b2e25746991126694b3c8436cd36db873f68"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
