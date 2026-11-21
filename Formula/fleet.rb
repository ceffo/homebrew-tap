class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.331"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.331/fleet-darwin-arm64"
      sha256 "c2c214fee6ba92dbbc13349ec81040658321b9923487d3190e3d90f9e2aafef4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.331/fleet-darwin-amd64"
      sha256 "1a51b6976630be1afeb77f441aed4f8d599d1c70462c418857bbf9e9e1dd8fb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.331/fleet-linux-arm64"
      sha256 "8a87ec393b6848116454cadfaa73c602b97f165d9c5b37f9898438746254c102"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.331/fleet-linux-amd64"
      sha256 "cf4e6aa905ef0e60c30bfa0396ea723a2795db5121cc58f58cfd9dd112b92adb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
