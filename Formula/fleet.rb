class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.366"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.366/fleet-darwin-arm64"
      sha256 "50de05f5b4201408ddfe7862f24564d5889d27cb8a599ff50584f2b997efce78"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.366/fleet-darwin-amd64"
      sha256 "2887ed4c22096167b1d25321415cad7264b59a59d097a1b5833fd4e03c18b819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.366/fleet-linux-arm64"
      sha256 "66ca07569c21bf84e34c7a3ca9b02a958bb4dfcad189d96594ffbd482c11ef0b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.366/fleet-linux-amd64"
      sha256 "ae7c40db52e4095d713819ac9e360654feb2c3c3ac0dcc90e86588d80b92469f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
