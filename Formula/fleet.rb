class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.276"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.276/fleet-darwin-arm64"
      sha256 "9cdbf74bf99b5ed2b350c15edfb680928422fe005265548502c81c546debfa8d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.276/fleet-darwin-amd64"
      sha256 "74a87db21164cf666e775389c9877638f02a1fea0b29191951a2e5ba0eccfab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.276/fleet-linux-arm64"
      sha256 "4e865e184955e23ce572fe3c938066d89e2c52b356605fe0a9502d384473e4c7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.276/fleet-linux-amd64"
      sha256 "e0a6b866d268296ee1beb4d237efa2764e03ee1a9f71f750e65bc51c11237c6f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
