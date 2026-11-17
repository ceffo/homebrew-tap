class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.289"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.289/fleet-darwin-arm64"
      sha256 "abf34e042f5a7900e1fba06364b89e11f0f5ac7e73e505b3f2e996129b03840b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.289/fleet-darwin-amd64"
      sha256 "cdda2c257f31f8d448ea63804f063ec51c3684d54f5b19ead63a66859778c496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.289/fleet-linux-arm64"
      sha256 "55745851e2fbbcd21806944e01b4ee92a1669e446d59bc9b6aed338e5766d557"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.289/fleet-linux-amd64"
      sha256 "7f0883ea4df2a879c1cec21f5cc42cfa776219e3875ebfdde0d55c1ee41bda0b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
