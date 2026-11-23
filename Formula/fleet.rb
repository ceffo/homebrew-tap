class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.394"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.394/fleet-darwin-arm64"
      sha256 "00ecf9b23ad6f6046352d8086ec96b13114e5c21b0a995e79d03eb88238abef3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.394/fleet-darwin-amd64"
      sha256 "63fb927e14915ea684cfe3c9c35a20c047b6750c455b03b1fd473321136d0e77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.394/fleet-linux-arm64"
      sha256 "8ba4c415266c15255ddfafa56b3b9f6ac15b9816b024e06dc92161774524f8d7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.394/fleet-linux-amd64"
      sha256 "67c77e23b0929f1df48e7eea54dbb02d7039d4fcf4d07817e413f4cffe6aa7c5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
