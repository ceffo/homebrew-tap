class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.128"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.128/fleet-darwin-arm64"
      sha256 "dfbbe1b62d0810cdd1c4cd44495e3b5966d8a5e30d3c88da321eaeb41a358617"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.128/fleet-darwin-amd64"
      sha256 "4515765b86c1ae41d8568c26bf1f24b8fc0c8cfc81a4db7a56fcb289faf648cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.128/fleet-linux-arm64"
      sha256 "152ec4012d605ab6a1325ca580d2df4c61e0cb296887e139ce74ed6ce47a5feb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.128/fleet-linux-amd64"
      sha256 "86aba5528e6782d31343708d7c9da70a90279b521ab212c3ae2e1eb5a89bdf0e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
