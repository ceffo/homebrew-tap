class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.300"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.300/fleet-darwin-arm64"
      sha256 "839a8c4d5a71e922206f31c9b54e188095562aeed2338bab1fc464b2018c9f60"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.300/fleet-darwin-amd64"
      sha256 "8ed7014aa8b3f68c562d53af1842c900b247b2a35090a3014419487a61055784"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.300/fleet-linux-arm64"
      sha256 "e500e095ed0d0b9b497a7728bf24962c18dfacc36a6c35d997d348860fed145a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.300/fleet-linux-amd64"
      sha256 "e65910b7136e496938023ae8f8018269b6e2f68684638db9734a7276af277687"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
