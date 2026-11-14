class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.193"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.193/fleet-darwin-arm64"
      sha256 "c8bd4c4e41e3e0212fed2a38f30c69f9a240324bf019efbfeb991bbbb983d28f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.193/fleet-darwin-amd64"
      sha256 "0034944c17de767f6c37e6b9933e6df3e140cdd44f1700924d0563960531a6a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.193/fleet-linux-arm64"
      sha256 "a1d83af754ca460cf217f7e643c699b23b9be622cef60e34aaf4d6507f911364"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.193/fleet-linux-amd64"
      sha256 "23313e4944410daef53cbda9dfd45ed8f81eebc44af4739c2fa3200fa26e3343"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
