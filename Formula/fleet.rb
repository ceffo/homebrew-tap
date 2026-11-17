class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.269"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.269/fleet-darwin-arm64"
      sha256 "0fe02c5851c1a74c8b44c7ce2cfcc5887273cb6efc5cfa1f598528c4576cf30d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.269/fleet-darwin-amd64"
      sha256 "5a1c67f711abe0e56c4a86e4f03d089764246e22c73823f31146c39b8bf363eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.269/fleet-linux-arm64"
      sha256 "7e4c3d6afef9ceafbe6d3dd1a1572e301639aaf04d17e3d3cd3daeaa871b77dc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.269/fleet-linux-amd64"
      sha256 "1b23ef5b1165bc2739ae5a31da8b2d7a27997127511a0aa94454c596b35577e8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
