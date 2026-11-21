class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.340"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.340/fleet-darwin-arm64"
      sha256 "ed1c62ffe6f2414f4846fb63eac3ef737c1828b3242fd094fcbf548df4c7c1e3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.340/fleet-darwin-amd64"
      sha256 "ada66bd2591c9648da71987adcf8fb91b441e1c8d189eaf80273604a1beb0ec8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.340/fleet-linux-arm64"
      sha256 "749207be1394735aa0c0d2154626ee43492a79923df74c810fa8d4474841fcdb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.340/fleet-linux-amd64"
      sha256 "ead392572dc62e724ad991fa4160ae60f1aa055140bb176a5f1e18cbc6e0f9bb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
