class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.256"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.256/fleet-darwin-arm64"
      sha256 "af635316e05fcfff4ded30937692d65ab92d791ac6fd4d694f3f804876b4caeb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.256/fleet-darwin-amd64"
      sha256 "617a039bf778b7bf88d7bda0a514430a8fa9a7e354dcb03ecf518902095b9d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.256/fleet-linux-arm64"
      sha256 "16420d3751afe425eb35371fe467129824886c27cc352a84a74fb199f2252a09"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.256/fleet-linux-amd64"
      sha256 "bccae449ae39eef5de79ba09dffe27ea989de7e90b38276d9f4d45d928e80f5c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
