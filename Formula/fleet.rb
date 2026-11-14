class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.202"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.202/fleet-darwin-arm64"
      sha256 "47e44b32815aeed5856570907082e8ba49d1a586586ba448d7608b689a659a2e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.202/fleet-darwin-amd64"
      sha256 "a9d5f6aa5a11c74c5894bfdc31d7ab761033034b062275322ab661d71e29d8ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.202/fleet-linux-arm64"
      sha256 "77e9c5907564f88c8c454099b76e6e23dabd96b9aac3ffad257b49bd3234257b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.202/fleet-linux-amd64"
      sha256 "e5707037f5ded76d8d452f5e386f9c12547e6180a6b762c41164d202f32293bf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
