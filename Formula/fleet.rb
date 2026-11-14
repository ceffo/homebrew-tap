class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.149"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.149/fleet-darwin-arm64"
      sha256 "00ddfce8f2ea35de473d147e89362ecc6c8f5f974e09ffb2e8bc9544df1a628e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.149/fleet-darwin-amd64"
      sha256 "aad71ee7c04902fc17c9145d52e7d24d1f0d09d2b6dc894547d4b01a3df265d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.149/fleet-linux-arm64"
      sha256 "b701c140438e48f0c1e15e0257dea55eafe1189f55f2b73210de594ce027fa12"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.149/fleet-linux-amd64"
      sha256 "d6576e74f7741a419bc6ef2fdd5729c4780ab5f6132e4272647a815d85ed1507"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
