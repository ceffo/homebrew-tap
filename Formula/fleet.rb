class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.95"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.95/fleet-darwin-arm64"
      sha256 "c898e1eb78fd6c864997df9101476fb07b1d2f63b681ab59e9c2f6f7fc839ea9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.95/fleet-darwin-amd64"
      sha256 "51878d8becb1934d6b5d095df0c9a24b982f5eeb4950f54778cf8d33e6864b64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.95/fleet-linux-arm64"
      sha256 "6a841e35f72e71c6f0034570bf3d4bad3713e7cb6300e8148b55ed9b1a082cb3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.95/fleet-linux-amd64"
      sha256 "809a2408075f5ff866619ad68b36ad34d5b2018673708325d0d57c199f67f04f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
