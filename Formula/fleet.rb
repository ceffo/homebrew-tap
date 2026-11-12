class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.85"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.85/fleet-darwin-arm64"
      sha256 "92bdbec2d9232d814b548b1ee58479cd2e3f8ebf6a4ceaa7ed0632acf72e2012"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.85/fleet-darwin-amd64"
      sha256 "2bb0ec437284446d02c76de4b2d2fb528b5025b0959f77af01a6a91ef7d4039f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.85/fleet-linux-arm64"
      sha256 "93d99936762ea0ddf4f5602bb630dd49ed7fdc8015e0f7588567813df33fcf6b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.85/fleet-linux-amd64"
      sha256 "303b0f821aa64f8e1621a1fdab4fe2efc1c6f35406863390f88055bfdcf2e7f1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
