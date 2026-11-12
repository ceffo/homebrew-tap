class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.110"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.110/fleet-darwin-arm64"
      sha256 "e647982dea74411deef48359a7ddc4990855635b3a937d7b0798b989c104e810"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.110/fleet-darwin-amd64"
      sha256 "086c6ff2772a8db96a042dcc4030932afbf23ba2899c85253c4713ac326d7a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.110/fleet-linux-arm64"
      sha256 "d55fc8d7cdc6857256b41881907f808829075bf2046f80a949fc53a475b1a1a2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.110/fleet-linux-amd64"
      sha256 "172726b218086866a5d0f3595bdd37060b759198d3fe76c2a080b7e3e7b1ba12"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
