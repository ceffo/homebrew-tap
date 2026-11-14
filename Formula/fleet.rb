class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.152"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.152/fleet-darwin-arm64"
      sha256 "aeb21364e1e7f27b1ca82f3305c09235c62cf9353e5d615a4da62864881e6537"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.152/fleet-darwin-amd64"
      sha256 "ea46e40027746e9b26fb4058a8aba2e45cb87c5cf895a73a197931831f16290b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.152/fleet-linux-arm64"
      sha256 "35d12f6290425bc672d84819a6d8f292a83d0fb4679ddcd1176a44e08ffc2df3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.152/fleet-linux-amd64"
      sha256 "f17d4f539fdcacec9dd0e17980deea18c18b5c16bdc0f69c9362d3a4f90ec45e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
