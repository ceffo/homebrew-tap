class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.388"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.388/fleet-darwin-arm64"
      sha256 "8ffc0b3470b657c28f703f4583da63492da6d8311b319749f270d65810cec69c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.388/fleet-darwin-amd64"
      sha256 "59bb222b84ba9548b9d47ebd156ab7fa1d856ba3499269529946d0e0ea7f6506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.388/fleet-linux-arm64"
      sha256 "da2519684c72fadfb500b6b866e122133ad74bf3c334088b99384345f437b015"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.388/fleet-linux-amd64"
      sha256 "67d358bd04467794c3e1696d0e575a34cb33b2bc65fd7bd77ac0b9d811895417"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
