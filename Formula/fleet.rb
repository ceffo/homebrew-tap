class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.386"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.386/fleet-darwin-arm64"
      sha256 "a7e1461231b96366324f3d46a35131f5b0ee7afdb83ba44be91df8a4ed0fbeea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.386/fleet-darwin-amd64"
      sha256 "51cf35ead6efbffae5ec9d7b41326ef8ce59cf29aee332acd9f636e5448adfa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.386/fleet-linux-arm64"
      sha256 "72d983b19ad4043bc0f1bb778c0e55bf493e6e736393dd89d01615283913f317"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.386/fleet-linux-amd64"
      sha256 "b0446b0edd13df49924dc17407302cfc420818c0dead2080354830e73953d6a0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
