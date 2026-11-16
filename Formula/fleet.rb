class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.239"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.239/fleet-darwin-arm64"
      sha256 "8b0cde375709d1ca0b8746168fbc81fd06a48e8f44a7e6af3ae9f66f73cfa664"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.239/fleet-darwin-amd64"
      sha256 "953b1922e70abb07f67ecc56135f2f3864514702e916523054112d4d249d2f70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.239/fleet-linux-arm64"
      sha256 "c2929e83733a308bf10e4cef45841afb47f5db741f1fc44d029f094b8a3cec47"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.239/fleet-linux-amd64"
      sha256 "af8264607ab1bdb789db0d2f4e89c7edca8931b51bb1e62d8fc9d954f07f220f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
