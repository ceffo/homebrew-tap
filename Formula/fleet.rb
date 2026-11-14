class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.194"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.194/fleet-darwin-arm64"
      sha256 "cc35067b13c71cf686371ca72b09e54c9e16e4dca8367ad88f5b91cb7eb8a59a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.194/fleet-darwin-amd64"
      sha256 "5c70cd425c220b0efa62f8401c22888b9858f594cb5d7eba1242dfaa52173f5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.194/fleet-linux-arm64"
      sha256 "d38fc8eac41ac1d27397bfd9f548db57954abf3883f74d426006c39dc882e299"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.194/fleet-linux-amd64"
      sha256 "3812ffe89ddcff248052399f500c2ead157c0c26eb863aa8d32e20e336bea604"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
