class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.70"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.70/fleet-darwin-arm64"
      sha256 "c07b0c8f9426975f7dae49bed1cb4db5a6acf1faf0303fc8ec2475774b5259f2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.70/fleet-darwin-amd64"
      sha256 "d9006dea788ba0738f2770015adbfef48dda62e5cd8a2fb083104243998c5d9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.70/fleet-linux-arm64"
      sha256 "566bd60bab2e2dd147b35c7d97cc708f9aff7b13d1ffb6f145166ee3bfa9d822"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.70/fleet-linux-amd64"
      sha256 "bf0ccc0a91b80ee17afb65c172a3d5142895271d2991dcfb7db025e9e32661bf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
