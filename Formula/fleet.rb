class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.224"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.224/fleet-darwin-arm64"
      sha256 "cccb7832dd182a3160ad4d0cbc372dea0d22aa9961470f7752e3c882002dc7c7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.224/fleet-darwin-amd64"
      sha256 "c326a104230f2f3ef1ff349f0b31ba2e73b833829df748a5303afe225460ba00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.224/fleet-linux-arm64"
      sha256 "71879ce796a436548161cfdd7bea3f26c4a415f5664081c0d13816d7d445eebb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.224/fleet-linux-amd64"
      sha256 "1e884b643108dacd6f2a7bbfd71c184219aa77a1e330820d2e2027f7d717b455"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
