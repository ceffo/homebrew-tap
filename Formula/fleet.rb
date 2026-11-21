class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.345"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.345/fleet-darwin-arm64"
      sha256 "eae4f7d188619776974cef67985ca010a9ad7a4ef1f5b82936928b9602d630d0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.345/fleet-darwin-amd64"
      sha256 "675230e3a8a0666e090d4746b2540a89243af9f3b46da490127ea3567ab9e92c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.345/fleet-linux-arm64"
      sha256 "2afebf34a2d0b0c16cb294e7ce6bb5a152d9c6552549730f878c9a9fe32b681a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.345/fleet-linux-amd64"
      sha256 "3393980ce97c2deb27ed065c56ceb5be6e3188ebf61f29653ddf39d2a42152c5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
