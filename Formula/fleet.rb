class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.65"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.65/fleet-darwin-arm64"
      sha256 "f561e4a0561432ae8a252b3bedbe6b6ba276083b6be89f07f9e95d679a2de7a7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.65/fleet-darwin-amd64"
      sha256 "e5653840c7300b72697d062f77477b58ec4a107dba4b6d1d637fae4ad78c6595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.65/fleet-linux-arm64"
      sha256 "7cff0d9585a31d4cf907b1ce55ea226f67e67e132a79a717f006a386425265de"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.65/fleet-linux-amd64"
      sha256 "1cd6954b5aad6f1f5d0163cab36ab860dd83095163a1022c00f71ef697ff6de1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
