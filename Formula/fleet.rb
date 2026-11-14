class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.178"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.178/fleet-darwin-arm64"
      sha256 "e761f796cd863bd209fcea49d5b384e30ed2ca780a1ddc3f179e8ecc207db903"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.178/fleet-darwin-amd64"
      sha256 "b88515df2fe532ed15f2a0f9717bc4360cb8de17668439dc1578a7b8bc2fccf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.178/fleet-linux-arm64"
      sha256 "1e34f91863fbf37d3a25d60297811b574b705dd736f6a30da85fb4e8dd344f47"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.178/fleet-linux-amd64"
      sha256 "a859960a3ed42d0e63e2b9b0cba7d7476f8b92a39ffe9a793bafa466947bb850"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
