class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.321"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.321/fleet-darwin-arm64"
      sha256 "cef8d1ea19b3f05f80767353d136cc235b7d981d5f58533fd30f21c6350187ed"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.321/fleet-darwin-amd64"
      sha256 "5bb1407b46d383b16662bad1c37969fceee6e16314dea23fe4cd4f98a470e25b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.321/fleet-linux-arm64"
      sha256 "c3c74f206d9d44eab2565775b8786b925d1f52f395efc575c3d66d17fc804045"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.321/fleet-linux-amd64"
      sha256 "171b7ef2f62604b6c013cb98d4934cac5dbc7990e88cce9a3548ba705b9dbe48"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
