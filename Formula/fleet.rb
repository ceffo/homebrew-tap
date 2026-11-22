class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.389"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.389/fleet-darwin-arm64"
      sha256 "d4e7cd85858691d6e1302618dddb9d296d726cebaf539fc6d48cae1769d0ac8e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.389/fleet-darwin-amd64"
      sha256 "1e1b6436a89f585d6e76c57ff53ad559d0d785cd9c9ac2764f01a256bf0ab733"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.389/fleet-linux-arm64"
      sha256 "dce2f3e99fbad75fb1cccd81657954d6460083a9557657d7b9aa2f3304d20478"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.389/fleet-linux-amd64"
      sha256 "5b701a467b924f3717adb4363303d7a6a5101dae917b228b021905a56d5c39ee"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
