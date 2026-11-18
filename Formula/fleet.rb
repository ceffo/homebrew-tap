class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.303"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.303/fleet-darwin-arm64"
      sha256 "2a5653b0540ece7015ea0830ee233773ae04e0cb8755c992ed19e1d057dc3d84"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.303/fleet-darwin-amd64"
      sha256 "d4cc8da8a17f4ecd30f1a67d0968da1174631bdaadba7ec09bb16c75852b827d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.303/fleet-linux-arm64"
      sha256 "36270003d4f8316e339e09c2a0104904ce469a786f55f1507f49c7aaf4b5da63"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.303/fleet-linux-amd64"
      sha256 "17cd1cad62ae188175b4fce2fc16be7bc565641d39e6274b603e52993ae6f0db"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
