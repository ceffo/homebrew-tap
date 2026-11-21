class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.351"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.351/fleet-darwin-arm64"
      sha256 "029337bca1afc854c3d2b42c6237f4986a2b41b1583f9895b40354b4a0a235ce"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.351/fleet-darwin-amd64"
      sha256 "da0bf0b2c802fc3ed0a3222402d650f43c615984ede5cade5e5f57c691b35463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.351/fleet-linux-arm64"
      sha256 "bc03bfcb53678116b68b6f00cad9a9893f9f8ade85f378e1ba0ec8e821b3e1ae"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.351/fleet-linux-amd64"
      sha256 "6e698f1826e48990b1eaad6609c3707e5db495fed0ee009d95a7be1df7591e08"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
