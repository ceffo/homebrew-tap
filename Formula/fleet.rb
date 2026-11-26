class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.408"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.408/fleet-darwin-arm64"
      sha256 "bf63025c17d8205fdbd02448771f265b66e77a41b1259bd2d767e195048f3d38"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.408/fleet-darwin-amd64"
      sha256 "e342fc83e2c0b6c6406ee7f5394db8b9636ef88787f4138b96cfbee01731417b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.408/fleet-linux-arm64"
      sha256 "e0198ac03ad20289a3ead8424c583cc8396053068c11bfc746cddaa05689f442"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.408/fleet-linux-amd64"
      sha256 "4a209eda763cc71b06fa3afc80a2d01a0a271b860b05c248bc4232374fd1aae1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
