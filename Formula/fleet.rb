class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.401"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.401/fleet-darwin-arm64"
      sha256 "b09600a1e07674efbfcd1d7122ef14e23107b86d248ed538044c9ffc81b669c3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.401/fleet-darwin-amd64"
      sha256 "c7a8adeb17da47c2da45a8fcfb6b16a8828327461078b8754d9bef5caef360f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.401/fleet-linux-arm64"
      sha256 "fe3740f48087778bc834adeffcefd0977c239b36d989d6498d843abfb5e9c13f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.401/fleet-linux-amd64"
      sha256 "79f286dd2b1e5e21e9ada74f309a2eb135acb2acf9622a6c794e7c1a2a24996b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
