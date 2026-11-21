class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.370"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.370/fleet-darwin-arm64"
      sha256 "dd915e33fc4233032bb68eafb79053b5de7073a35a31b90570c937a205d43683"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.370/fleet-darwin-amd64"
      sha256 "81f4735240b08cb319597859bac39a65b8b2f16a765501799556dad24b4f535a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.370/fleet-linux-arm64"
      sha256 "5bf50e2e833a42a13976e6e3e1c8c1f45b27009d8839ab8f1437076087a3f4ca"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.370/fleet-linux-amd64"
      sha256 "0c1dbb3ba99615dafd34fe714f36f8083eaef06644e09833b0f287512533de07"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
