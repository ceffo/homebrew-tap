class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.274"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.274/fleet-darwin-arm64"
      sha256 "ef9054b952b92e671ba0fa41f25397c20b9abaf4f8e0411525bd859eef995b11"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.274/fleet-darwin-amd64"
      sha256 "13f2df88f66589ff5e2c5c0d0f2224b44c0b888a70466c0c6b526df4f0f629c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.274/fleet-linux-arm64"
      sha256 "5cd3ff7143ec8c50f19c2fa042bdae9e423655451b70c9c2c990a8cd605f71cf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.274/fleet-linux-amd64"
      sha256 "a9e23e1de23a8b42544ec3ebcce24e4f7559842d4db4ed52423f7de78236d495"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
