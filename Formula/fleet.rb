class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.255"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.255/fleet-darwin-arm64"
      sha256 "b5f04faab846444cd93529cbd5ae8d256801c3bb1eca9c317170fd31c8c7dd23"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.255/fleet-darwin-amd64"
      sha256 "9bb22c550065eaf1ebe823c6e79903b0731902a9bc86abe2c9f536cfca551ad7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.255/fleet-linux-arm64"
      sha256 "98b6e8ddaaa90a824e3d7b67037edc22caa8a0f2f7869fe72039af84431745ab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.255/fleet-linux-amd64"
      sha256 "55f96ee48b88e78d3be3f53d3c23668d5b52e6d7d431653bb5e92f011d8129f1"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
