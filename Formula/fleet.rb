class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.106"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.106/fleet-darwin-arm64"
      sha256 "509790082c193186e9e3d61e30e960a953310d59532048b19b1b2b4b20da4cec"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.106/fleet-darwin-amd64"
      sha256 "496d00f7e14ed194f3a65a749b410d9afa8f2e84e27ffbfcef61a2a6323a8cfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.106/fleet-linux-arm64"
      sha256 "6a0941886d237f31c19b7f45329990077bca68d14a77ac8613baeef8143d8774"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.106/fleet-linux-amd64"
      sha256 "178b23371a8150a102b680007959e5910a42258b10eeca1be4bc74658d8d07cb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
