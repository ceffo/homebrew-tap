class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.114"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.114/fleet-darwin-arm64"
      sha256 "a00c74df8a80a3cecd2b0aaece2d79af207d2d94e17086e9861d1d18b98a3330"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.114/fleet-darwin-amd64"
      sha256 "496ac1bf57988391606c3eac3167af76474912e21680cb33601039b2101d2a37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.114/fleet-linux-arm64"
      sha256 "26dc2f7873f43f87df5b235bb312b6cfc17ad5cd345cd0d0fa5054e1bd4bfdc6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.114/fleet-linux-amd64"
      sha256 "a0cbd17afa199caa6533588bd0b9b9a366ff0f8376faa7b7866b410f1d37e575"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
