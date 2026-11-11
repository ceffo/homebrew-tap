class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.17"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.17/fleet-darwin-arm64"
      sha256 "ae81ec2efdc55a95fdf86008f47878a97e8bae41f9ab62571b729ab655304097"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.17/fleet-darwin-amd64"
      sha256 "578d60b4ebf6a3cc4b5385f616a6dbf7856f666d335f1a68d3c2da7f7c65625b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.17/fleet-linux-arm64"
      sha256 "19faf136f3de2e56414c0bd7b9da180d6a6a4ef274b66a99116f537412026a43"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.17/fleet-linux-amd64"
      sha256 "b32140bed969772106a9977d4efbed32f8bd317a6d8955c321512d344609c9e5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
