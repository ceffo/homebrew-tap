class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.7/fleet-darwin-arm64"
      sha256 "610128f2f1c1cec2918b0fe837df2740ea581a9ef032323eced7c2eb809ec1b8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.7/fleet-darwin-amd64"
      sha256 "d052c488fb6bf98ba51f9299fba3be8110570c476bb0e83ccd170934a7017075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.7/fleet-linux-arm64"
      sha256 "5a3777dc9d640fcfbbee903979ada230261ad21ad59fd1dd5408f565b49ac6ec"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.7/fleet-linux-amd64"
      sha256 "7840996d6c7bf7d041d4dc1743d4d56370a15db30291ce6868112089708642a0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
