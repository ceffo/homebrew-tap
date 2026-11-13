class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.145"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.145/fleet-darwin-arm64"
      sha256 "6c4bada64b65e7a8c0d831063cd9015b4c2935f27ca327b12e16351f0e50e435"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.145/fleet-darwin-amd64"
      sha256 "67da73690882634412717660115004de1b3954d4e4eea00304c17b5fcaa1dad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.145/fleet-linux-arm64"
      sha256 "9e173b3552b25ce9d076a4f7c361f04ee2e0d640472364bdd9df2b769933c462"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.145/fleet-linux-amd64"
      sha256 "dafbb715cd2d48989238354f474802b34938879fd4527d1be2f21f660d65b3c0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
