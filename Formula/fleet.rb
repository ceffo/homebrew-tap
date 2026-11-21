class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.337"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.337/fleet-darwin-arm64"
      sha256 "2a769bfc6c8fd761805c80d45993688f241abef206ca6b32f99932efafb4ab51"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.337/fleet-darwin-amd64"
      sha256 "cc7b0f0c2893d43df7a024a394a3d08c1e18ff624b164d08ba8d25e111736373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.337/fleet-linux-arm64"
      sha256 "f3cae79636a0bb9e5a2255fb5b9ed0406b5bf6b0f1df4434ba0562056edbca98"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.337/fleet-linux-amd64"
      sha256 "6a92c196b1fb672b6d705dd0ecf9a45c06e4de8c63fe4ca5742726dd192c878c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
