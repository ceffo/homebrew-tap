class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.131"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.131/fleet-darwin-arm64"
      sha256 "6522a74631765fa4eba4902374354ae25ed28623a02085b65ad55d09b5267e65"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.131/fleet-darwin-amd64"
      sha256 "980bc7e49c23bca1f349b5a8868a5d2431018a38454f914a0944166183b6b47d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.131/fleet-linux-arm64"
      sha256 "3b6dbaf9b4c5fcda2263fab3ed655e56ee890908a4f1b4259126a20e3c112471"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.131/fleet-linux-amd64"
      sha256 "5d5bcc3ea2cef215a20aa9c04ff65f87ed2d95850f8e987a4f5df7a0e7c42848"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
