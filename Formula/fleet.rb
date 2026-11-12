class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.108"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.108/fleet-darwin-arm64"
      sha256 "91f054686dbc8ece94062e4cfe68716de35f359c1eb652d84f9c003f58a6af62"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.108/fleet-darwin-amd64"
      sha256 "d6d3754f7943c3e01748ad0a7a5d67ce999b7b4d9de7be5fa87e8468da1571c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.108/fleet-linux-arm64"
      sha256 "7ab7f8db9edea63033d4906be1b2d59254e6a1f91a776b976c989e240f642fbf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.108/fleet-linux-amd64"
      sha256 "1e9e3fcb988bca18d88a63714b467731e79338c4c2475b4061adcdb2fab26db0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
