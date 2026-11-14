class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.154"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.154/fleet-darwin-arm64"
      sha256 "8c8148c0f9ea32932a69d9b832b91c35b1b0706478ee0b3a445df6467d8b05ea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.154/fleet-darwin-amd64"
      sha256 "74a988fecfa035e98c46206c1a0ea1df6b6e39573471eb85104613dff3330334"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.154/fleet-linux-arm64"
      sha256 "ce3885b1fe03aa05bb3109b635315113df710dc16ec5d5b9016b01a352070220"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.154/fleet-linux-amd64"
      sha256 "84f28c4cd255ce36a2331c877083a17c432527da2306b67b848c3535834910e0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
