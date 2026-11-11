class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.14"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.14/fleet-darwin-arm64"
      sha256 "4a546732fe3f76c07dcf752c5ed9490b5fe4b722cc38a00e343e1c790fb56b45"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.14/fleet-darwin-amd64"
      sha256 "756382dff742832f842b22e1eef8db90d5f2c2d0dbc9e6ea151d7fe4979993c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.14/fleet-linux-arm64"
      sha256 "395d8b6595ca54ec38d6b910bf1a9a313fe1cf581b6fe1cdbf147114b94c8458"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.14/fleet-linux-amd64"
      sha256 "c7ae80068ac7f1b383200756b237c4b18ff566cb54cf8f7871dca911207e74fc"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
