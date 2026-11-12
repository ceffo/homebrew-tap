class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.75"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.75/fleet-darwin-arm64"
      sha256 "42353a68d84882a4b9483d28605431d33df5ebdabe70e0a4ba2c6cc5bfe5fe7a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.75/fleet-darwin-amd64"
      sha256 "493182e05ba8cdd12456d13b3e1921807255e25a0729b12848c8d033b154e90a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.75/fleet-linux-arm64"
      sha256 "6ed0dae8f3e39d01f2b9823e574f91f17d3e89892a93c65958ece9cc3bb19ae2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.75/fleet-linux-amd64"
      sha256 "7d71a75eaa902e2dfbe476a5ffbffdfb9cdeadf0e692a0dabe1250505abc855a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
