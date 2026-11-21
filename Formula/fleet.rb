class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.383"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.383/fleet-darwin-arm64"
      sha256 "c0c301b80bdaa6f545c5c7637b7875f2d553387fd550d29b7a03e90e22606d22"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.383/fleet-darwin-amd64"
      sha256 "c386d51e00fe19bc3c3e94f2fa102c703b72931fa654566614eb14faf8339064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.383/fleet-linux-arm64"
      sha256 "3a1a9ea4507671b9f549de78c5697c320bbfe1f97718219d18cd8ae85bdc5bc4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.383/fleet-linux-amd64"
      sha256 "d6e134e57f369c6ffd5e6ca5b34d57e45de4474b0f73ff129d2a1197c67798f8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
