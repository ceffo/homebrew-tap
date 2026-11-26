class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.410"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.410/fleet-darwin-arm64"
      sha256 "9e58d45935d8edeec8fd4a3a8bad24870905c2f33a7dd3c13b67def6c73ac4f0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.410/fleet-darwin-amd64"
      sha256 "e5a2cc74d806dab84492805deb84c8d882090517efca7645cb3add4ff0af67cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.410/fleet-linux-arm64"
      sha256 "93817d07719f2a88b952ce115e3b1a61a78a3800479b77a1e8d44cb0c2cac9b4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.410/fleet-linux-amd64"
      sha256 "bac4c319347f32e9b26814226b6a54bec062e7eae8f851ac1eb08a48bd93f965"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
