class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.184"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.184/fleet-darwin-arm64"
      sha256 "03f20cd724fd0a7bee8b10fea3f25b512f559fb0e76017823154be336097c9c3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.184/fleet-darwin-amd64"
      sha256 "6a41067c12805d35b490e1f27fcb649c1b70d92ddbce02601ea025574ecee15e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.184/fleet-linux-arm64"
      sha256 "0f6fdc230fe260e71253ca7aa6f0426cfbda6c73cb21ca4052fdc35affbfa29a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.184/fleet-linux-amd64"
      sha256 "3317825826b62206172b2237d5c5d8502a2bf1178ddb9002b0b3086cd70defd2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
