class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.84"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.84/fleet-darwin-arm64"
      sha256 "ac32b120441bccf0aed4300b0d9ca54ed7a18bfcd508b89d94da710aef324e85"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.84/fleet-darwin-amd64"
      sha256 "87319016a0ff7ae5d86369741e6e7e446e77ace98415741dbe53a8c47319824f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.84/fleet-linux-arm64"
      sha256 "9a98bdb4dccc61b3b314a88816396e1d93ef85e8275b2b484eef41e4870ba43a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.84/fleet-linux-amd64"
      sha256 "c60915ddcb3d57ca980a25e963eab74dbc129f7735234c517a57a744300609f4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
