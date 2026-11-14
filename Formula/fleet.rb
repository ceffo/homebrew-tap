class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.201"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.201/fleet-darwin-arm64"
      sha256 "237da23d7d6c98416b9ac6ae38ca14734eb5e9172d71a3756c558701943ac32f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.201/fleet-darwin-amd64"
      sha256 "5ab6d4f168ab9b8390f48d3ea4bb0c7268383786365c70ea53eeb68a37f9109a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.201/fleet-linux-arm64"
      sha256 "2ca066fa379abebe0abfec44706f40630282f8b4389d37b5f19698c17f36ff1c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.201/fleet-linux-amd64"
      sha256 "0f18e8d480904eddcd6fb946a4edac23e5d1781ffbcc5d5cda6c6a7adc474ec5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
