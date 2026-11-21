class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.379"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.379/fleet-darwin-arm64"
      sha256 "7abfda5554ac6808f2ef30d593df45148541ef527272c1a878c028fc829917c2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.379/fleet-darwin-amd64"
      sha256 "0441d4fadd641c45e890d52d6afed254cee08a45217be15bd8514a7018d87004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.379/fleet-linux-arm64"
      sha256 "fccf63be595c92ee397e6ba163cab8902b871fc7abf1d4aa31a95da02bf2c7dc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.379/fleet-linux-amd64"
      sha256 "d8b126e27d0fc576c9eaa1a03e73364d6e899ab7b686f1aa455bc2dab434ee8b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
