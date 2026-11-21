class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.349"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.349/fleet-darwin-arm64"
      sha256 "738377d3fdd3b122356dfd09e2e7cf9a528c5e42291586dd2edfd8d062187295"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.349/fleet-darwin-amd64"
      sha256 "53547a1bd2fe5f414e1326901196e0cfc19f05f0909afac3faeaa23d5bfdda27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.349/fleet-linux-arm64"
      sha256 "303aaef1b1a946d1c6d4a3284a931d10d9d641b17a3a5296d57a0499427426f8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.349/fleet-linux-amd64"
      sha256 "9741834585c57127d7d3ba715f99d901301cc39823dd4763152b3e22a9ff97ea"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
