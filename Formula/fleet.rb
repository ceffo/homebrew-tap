class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.250"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.250/fleet-darwin-arm64"
      sha256 "aa610b8d1d9ef17b0dd7173c132d794347c15661a29624f1383044513a1d073c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.250/fleet-darwin-amd64"
      sha256 "366cd7152fa48877d8605021b32c708e6972a5b885e3f0f7286326088365aa6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.250/fleet-linux-arm64"
      sha256 "a5e4995a191ca9374c36978a9e4bd95c685e3a970b628f52fccb40732c6f4647"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.250/fleet-linux-amd64"
      sha256 "2ac5ff87078bb35a0e26499d1cf8664aeffca755d15c8b5c8724406ff57654e0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
