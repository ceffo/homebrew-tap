class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.220"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.220/fleet-darwin-arm64"
      sha256 "c1cad7d862268ffd3a59a09531b866d4f5163c2ce59cce6706524af2dc08997f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.220/fleet-darwin-amd64"
      sha256 "9f562d1045a0dfd07cf07cc63ed30be47135b199b73eb1f82ed72a6b6dda979b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.220/fleet-linux-arm64"
      sha256 "db0e7597de53e121450e1b4a53325bf0d445323cb4d3f228b22cfcfa5933558a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.220/fleet-linux-amd64"
      sha256 "482d3e09bb191be217e5dcb97ac070e2c10a6b0ea24d6e1a3b4261ed1280cf1a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
