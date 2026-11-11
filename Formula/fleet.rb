class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.18"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.18/fleet-darwin-arm64"
      sha256 "68bb398df6eea25e7b66d1dcd37c3b72cd65a7b9e7800a47a77f1ee53823b952"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.18/fleet-darwin-amd64"
      sha256 "b31ea2719e213217b69bb1cc59a7d0b70874fa633f3445c0cd6170ef6a809787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.18/fleet-linux-arm64"
      sha256 "e854bc15faa7a2f82581ca11e40a05853bd9f375f7ddb263d28099b9c03d1ebb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.18/fleet-linux-amd64"
      sha256 "a275e7c27bfaa2e2ee01a5f2037beec65417de41d39e3df9c77ac6711b944c5f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
