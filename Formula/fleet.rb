class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.167"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.167/fleet-darwin-arm64"
      sha256 "ba822a98e30ac97dcd38b18b9ed915f46698073c5d42367fa2cea5ce91f9529c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.167/fleet-darwin-amd64"
      sha256 "101e4ab80131c3e82311bcd039b83daf722a568558db1a15dfe790ef06930d4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.167/fleet-linux-arm64"
      sha256 "30a3a66593701ba7aa189b26195e21cefd06cef7bf5ab0195ecf05dcf643b819"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.167/fleet-linux-amd64"
      sha256 "dc0ab6f1e1feb8320a080907e79a1d044d0e7a7f922a31182ff44b4f8df3f95a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
