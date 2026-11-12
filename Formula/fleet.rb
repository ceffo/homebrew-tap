class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.126"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.126/fleet-darwin-arm64"
      sha256 "7b78ecde11991f09c8f54b2d6301aecd5e4eeb7631f3caa1b56c13b4e0a05998"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.126/fleet-darwin-amd64"
      sha256 "a38dbc2f2c2f31c51173018a6e8d12b1e2bbc4cc446c266351949a67b817aa16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.126/fleet-linux-arm64"
      sha256 "f3b6420cd6b0db74e99d039a556ad54b3beb5611f497c2ba03c609bce0d2d8cd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.126/fleet-linux-amd64"
      sha256 "e592dcbecff71694f32d5438188d23c0878c30a845bc938f1d53a386e586475f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
