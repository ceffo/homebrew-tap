class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.169"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.169/fleet-darwin-arm64"
      sha256 "d286ef16e9f5ce30b32c73f716418123343a29c93c8ff91e72ba31a827b9c797"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.169/fleet-darwin-amd64"
      sha256 "1601ee75b5a7c831a27856beac3b473d079c8474fb6d729d873bb8bacea40bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.169/fleet-linux-arm64"
      sha256 "3c8b66f3492203f3aca388d3a9363ff6b2af64a5308a4d2f099e0f4cab34d8bd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.169/fleet-linux-amd64"
      sha256 "c72ecbde4cd8f3f96bfa3afb6fbea3b54187d1288aa5a231e296ab9730fbfae9"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
