class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.283"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.283/fleet-darwin-arm64"
      sha256 "6cd9c03aa0358a51f79895315f17ce481f20022cf1e8bf60b3f1fe374384813a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.283/fleet-darwin-amd64"
      sha256 "93becd3e497bc7b26bad3ad0eed91fcfc0c7ba36e7881c2584092e579840aa87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.283/fleet-linux-arm64"
      sha256 "3f4927682dddaeb8ca795543f8d8b4dce9b9831630300e481c888899a4f5cd6e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.283/fleet-linux-amd64"
      sha256 "335df60e6d45218f1b2124bb41b87052be1f442f357786c05326f50463e5941a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
