class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.102"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.102/fleet-darwin-arm64"
      sha256 "b09a9905c8e70850ccde4e3888190866db37e98a233c94e35137a0da92dc8880"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.102/fleet-darwin-amd64"
      sha256 "c6d9f1d757f1d1b23a1e34e7ba5b9268bc0d0f16ab9dea315e507786eba9126f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.102/fleet-linux-arm64"
      sha256 "46637a49cb8a5324e3512e3f1a07399d0026b7c6b41fd2177ceff4929ca87468"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.102/fleet-linux-amd64"
      sha256 "7069f64da03e4fcd2dbe72673510ff28485875bd92e71d74287b6ecba810b39a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
