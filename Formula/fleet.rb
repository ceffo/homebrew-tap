class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.293"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.293/fleet-darwin-arm64"
      sha256 "294df999a7a5a99a44e10a88876bd1119a78866384964ba8e3dc3acb61ad36d2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.293/fleet-darwin-amd64"
      sha256 "fc55f4837e82118f13947b5cac42429e9b527e193f7b6e7c149769c15f3abf96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.293/fleet-linux-arm64"
      sha256 "61322e9360d23ff45b96ed89cbc372bb47cff4edf572dc3fe15218c4bffc59e7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.293/fleet-linux-amd64"
      sha256 "617cf305abf08a5da51c73d765756247bd3320b3d22ac46779957527a1ed49e0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
