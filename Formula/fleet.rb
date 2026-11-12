class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.64"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.64/fleet-darwin-arm64"
      sha256 "023d301037f0916e232c85b056cfbdd156e7a43802cb372c718c2272ff591b64"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.64/fleet-darwin-amd64"
      sha256 "d1128b2b5a744e7751f187de5d8864b06e0641aa7c94169fd4a2b0b5beac8829"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.64/fleet-linux-arm64"
      sha256 "6c579c86b274724d07842082135e9b0404d3d5d525341931545f3474bc48f1a8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.64/fleet-linux-amd64"
      sha256 "5315c6850a930c6ea2c5d22b26d352ae217586f4b592a928ccfa3dd322284163"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
