class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.393"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.393/fleet-darwin-arm64"
      sha256 "98afdb776562112aa6d535d5fc321eedfa2b70c01c15f993bc711efe68b03871"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.393/fleet-darwin-amd64"
      sha256 "d4e834cdddad540f72bf676dea7f7eb87cff69812330aef6497d17d35e8252cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.393/fleet-linux-arm64"
      sha256 "0e984c2eed9b731139785f50db0559fda36131085e69f7b9a787f6281317d55c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.393/fleet-linux-amd64"
      sha256 "d1a75e5c4977f36ebdb0ef6de24b64473be99d0808c902dd4fa2d6a7790ba1df"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
