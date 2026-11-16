class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.253"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.253/fleet-darwin-arm64"
      sha256 "f644ed8e8d629b232091dccd430aedbdbab2e7583f3a85401accc90f21e3aea4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.253/fleet-darwin-amd64"
      sha256 "59b859771645e18cc9aeab86d996d335abdd1c8d127ef01eb3bf1affcc7c787c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.253/fleet-linux-arm64"
      sha256 "1c27d41ae436be6a0166cdc5e1cb18aac5db35849c1cc61ea1739f61df308dbf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.253/fleet-linux-amd64"
      sha256 "987cf62cb92830d7ff2c211e4b38e6da90c7098e03fcef18c728c9bd148bae06"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
