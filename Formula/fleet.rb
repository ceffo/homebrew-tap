class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.245"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.245/fleet-darwin-arm64"
      sha256 "84dde13b6f60e2dae18eacd58f48b999e5144cdd0a9b88d98a3760017b6bb7d2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.245/fleet-darwin-amd64"
      sha256 "17a8085cea7813c0e99ee008679292efeab696990730ca3f30341de03de16701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.245/fleet-linux-arm64"
      sha256 "806de66dc20f3428ccc813068ec0ceb97e728cebd2911ae7f1248a16153b1353"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.245/fleet-linux-amd64"
      sha256 "951f0ed6fb1cb0c2447cac91712954a2c230cf5c9f79a9d2c0357dcfcffcfaba"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
