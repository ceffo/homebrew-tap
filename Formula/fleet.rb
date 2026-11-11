class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.6/fleet-darwin-arm64"
      sha256 "f895a83a94a95eca78cf6dfa1da0cd6578aaadaff1f0109244cc18f48221ea87"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.6/fleet-darwin-amd64"
      sha256 "a51ea1c6aaa9a0b9a75dfde1bf57c7ea7ec48856e383e2c548a0fce12dec735a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.6/fleet-linux-arm64"
      sha256 "292946df691ade2b2f6abc2992a82415d887c7a2c4a248e9b49fa1760c8a3ad2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.6/fleet-linux-amd64"
      sha256 "65054b775b4e29ce57f24b1d44017a7a113fd953bd4585cfc57d5f23b649a8ca"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
