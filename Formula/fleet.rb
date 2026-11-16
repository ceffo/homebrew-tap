class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.238"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.238/fleet-darwin-arm64"
      sha256 "a4073cd9ac73a64c6ca3bbad69e286bcd6b24a882070b5cd06d5b4b1e738275f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.238/fleet-darwin-amd64"
      sha256 "14b2ea226f7fdda523f6902abe58a1d9c4689b934e414546e83b2d5b7ed90567"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.238/fleet-linux-arm64"
      sha256 "0a2274e2cf146462b8ec90d8f6f18176eaf9f1df115eee40f702dd8c2cb17f22"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.238/fleet-linux-amd64"
      sha256 "e083f24fd4a9b7c6ec666804724cbea37c83df019795202ce2c6c2062e06ad23"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
