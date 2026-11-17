class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.285"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.285/fleet-darwin-arm64"
      sha256 "f2eecbe51d858fdc46194acad576b157ef9ded87ed4e0b5c66dc4194db77fd01"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.285/fleet-darwin-amd64"
      sha256 "080932c4dd2905d5135c24a5245aab79297b0edea723c5168f9d6f3c2cbc6e1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.285/fleet-linux-arm64"
      sha256 "bf306f23860185aad6704ea7bd8dee8645981a87f1c5249d2b2c1ebf7f02c17a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.285/fleet-linux-amd64"
      sha256 "3105391e1561061fb08c16a0220c08fcc5b5b9a69c55e2962d343b30e0644704"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
