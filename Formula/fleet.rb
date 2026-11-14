class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.156"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.156/fleet-darwin-arm64"
      sha256 "d631d3c3247adc3880e57a61d3eec66034eb863b2fc493f1a1d8e80b8fdb7f5d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.156/fleet-darwin-amd64"
      sha256 "e9fb52a3a204e03386c8b57fa5279a00642cdb90271baceb78f71a0b325741f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.156/fleet-linux-arm64"
      sha256 "4476384059b6785161249df1898c04fceb27a24873d2d08a65e48e1061105a58"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.156/fleet-linux-amd64"
      sha256 "510a51b33942b3e1a217977a840e294401a8edc8307d5ce47b2ddabfe55226f4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
