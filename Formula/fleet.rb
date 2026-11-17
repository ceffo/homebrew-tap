class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.301"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.301/fleet-darwin-arm64"
      sha256 "6d3992ae939e0b36b4cfc1932443aee42ceb0b9a0688b2f87c95e975bf749668"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.301/fleet-darwin-amd64"
      sha256 "d2829287f13ea0cb2f7aaee4ab1a570c5710e92223377d07edacd78a42201353"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.301/fleet-linux-arm64"
      sha256 "99ac5f2c9b6abc8a211572be5c6ab51c972827f01cbe1546caf14d45ab0dae2a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.301/fleet-linux-amd64"
      sha256 "ae14471f6f7214d3ff364320b27c9e0f3526727a19067e006b64511bbb88926e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
