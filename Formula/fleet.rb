class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.57"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.57/fleet-darwin-arm64"
      sha256 "2e644fd77eebd981f348e88600a5c0f30031246803a32b43a7708a7f73c4321f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.57/fleet-darwin-amd64"
      sha256 "2a43300cf21b23c5c2769c143c6d4d360b944af8ff4860ef943bc37e9a47a746"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.57/fleet-linux-arm64"
      sha256 "11e5090aa5e8c963f07d3602becccc6a21695440dbb54e725ec66a6d544fba4f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.57/fleet-linux-amd64"
      sha256 "2f4c09e400d215806954389765814591f4cbbc2ad3941b3b8c9762d3e6c5e78a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
