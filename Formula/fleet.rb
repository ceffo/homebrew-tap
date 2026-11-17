class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.265"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.265/fleet-darwin-arm64"
      sha256 "8f7f8744f17ac6449da0c5c119c4e3e7488b61e1de7ab2d2c7c669fb61860b1e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.265/fleet-darwin-amd64"
      sha256 "795ce067f35515dcf0ad8ce8d5c05d9f046cefdc131267b34adda934b11fe33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.265/fleet-linux-arm64"
      sha256 "d16173a78b0e888684db029e384d33f4848c3ef059b9716110ac3859bc25b9eb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.265/fleet-linux-amd64"
      sha256 "50331838d1bfb86c64e012b69cf46cf52979853981d2245d6b5685f8ac71fc5a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
