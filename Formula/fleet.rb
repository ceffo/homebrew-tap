class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.73"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.73/fleet-darwin-arm64"
      sha256 "37269e4eb52e2cbfc6482a5fe21996f7acc075ee3612c87cebb16e37cdd8e255"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.73/fleet-darwin-amd64"
      sha256 "b1efa9123722bb7e98c14cd58f3f9aa8000b9df230d14371e8cc8afce0de5a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.73/fleet-linux-arm64"
      sha256 "218dc0e2bfa57c35b6943cb3f1651bae6f65d9939eed63e328edd52e7f905477"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.73/fleet-linux-amd64"
      sha256 "adb4457febbfbfb3e2d546e8b4184275b2c444f647d2d8210f0bcc7836f31891"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
