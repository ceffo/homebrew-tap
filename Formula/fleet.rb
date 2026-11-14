class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.161"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.161/fleet-darwin-arm64"
      sha256 "39872e6f81ad139adbadca668a137529ae3d3c6d4fe214dfa59b08ace2510cf6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.161/fleet-darwin-amd64"
      sha256 "559397955ee3bac679351700d5e26fe98b07562554207692f492b10728e06a15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.161/fleet-linux-arm64"
      sha256 "f4dc835b3655890cea198ee849ee529d90004e317ede48b1f2ab120e82f7b8a8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.161/fleet-linux-amd64"
      sha256 "46638115599fb359ae64bb53818e8851f7d7b63252db1c9e94bbcd262cc5b7d3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
