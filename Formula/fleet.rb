class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.241"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.241/fleet-darwin-arm64"
      sha256 "ca1258dae0db715e267f80af8e3a48bdb8717575d7f5cbc86da3d6df310803a0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.241/fleet-darwin-amd64"
      sha256 "84ce70b5f1568c1ea5d3d4126a31c2448163aae4141171f37ee387ce0232f750"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.241/fleet-linux-arm64"
      sha256 "6bfd0aa486dabfb57c8a32ce9d009e67bd56818ff7ddca7e0ac5e0fe874d665f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.241/fleet-linux-amd64"
      sha256 "a1e45fb7d18a4d6e356bb6137930fd3541a97bc0527d1f51e71173e259f3dffe"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
