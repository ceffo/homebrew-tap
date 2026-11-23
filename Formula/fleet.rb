class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.397"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.397/fleet-darwin-arm64"
      sha256 "a80cff933e9be4b28721313f608b26863a6f03a91650b5dda0bc0d04cf6fba67"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.397/fleet-darwin-amd64"
      sha256 "2cf1126e58d632911e0fac9d39a21235a3a594233b1c0b6e46122694b8939d45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.397/fleet-linux-arm64"
      sha256 "f50c57a88f2adf2afcd4113bcd143267c1b5c8311f4c024f8964e1a839138482"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.397/fleet-linux-amd64"
      sha256 "002cc968ecc5b38931a7cb408f55c4af5b6526a42efe10b5e2e2f67c6569ed71"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
