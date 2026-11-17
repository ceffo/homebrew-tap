class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.291"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.291/fleet-darwin-arm64"
      sha256 "da1435d57fce99b9400288548f6abaa3f77e0c711aabf1e7b5fccc8a0bd7f111"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.291/fleet-darwin-amd64"
      sha256 "1bf1509b34b877eea29fc76ebcf80cbcfd05dd48b5681e4a73133a9985bb0c71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.291/fleet-linux-arm64"
      sha256 "5b7ce2b215f280b86e67d8f8969c5ab361af0d60da287f18f9775c1d44e6afcf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.291/fleet-linux-amd64"
      sha256 "58833f582b2d3763023aeaf50b9531aea9dc5080ca10e0512436f09d60078a28"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
