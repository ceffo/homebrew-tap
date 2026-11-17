class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.268"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.268/fleet-darwin-arm64"
      sha256 "71422fc45b1fdc130a02a4a8a66d10853bd46331c67274745a579d60a893e3b4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.268/fleet-darwin-amd64"
      sha256 "a5a6d255dd1b37f00bbddecd24d02adb3603ab7b859018ea272eba3b9cb8fa71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.268/fleet-linux-arm64"
      sha256 "f7a287ece62d0e11a648c1e79bf00163d16b78f70b79c25e491aec1b77d12868"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.268/fleet-linux-amd64"
      sha256 "dd50e8f92fa8420a868b9f3330b2f76e9ac4cc3100a961b50c3f6b7109da6321"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
