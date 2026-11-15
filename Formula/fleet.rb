class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.212"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.212/fleet-darwin-arm64"
      sha256 "85a3ae07dfc0b0c651a3a9ca42f1f578a6b85d14153994f704bc2d7b4fee4183"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.212/fleet-darwin-amd64"
      sha256 "dcda3d878cc86d83dd80c3f79a40de5b02f12816ee97a21bfd4e36b682479a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.212/fleet-linux-arm64"
      sha256 "decfb1770bdf90aca9b5251be2ab108f0f15fa6fa71146ced2e4e7f2773ed21b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.212/fleet-linux-amd64"
      sha256 "16014c3afd7b3d2dd65b49fad73576d98c067e5453b5332a8a158f9e2e721c4b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
