class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.338"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.338/fleet-darwin-arm64"
      sha256 "1ad125720cefe7a0683d6000ebe469381144cd26460970f677554c1c69f4c4ac"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.338/fleet-darwin-amd64"
      sha256 "d9c8797e45700cb2e2efc6b4ad91fbde5307c7eae3808de327c3ead4180854ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.338/fleet-linux-arm64"
      sha256 "e3dfad679d5381a46acd2412d0b6f8458c18f08e9457f6f5669b963e4cd166ed"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.338/fleet-linux-amd64"
      sha256 "1e5f08698c4666035b70c45b0d752ca13af1a1945c37d7f2721ffb1ef90e9c15"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
