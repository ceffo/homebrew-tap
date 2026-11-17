class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.266"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.266/fleet-darwin-arm64"
      sha256 "94d31988b0c17dfc09bfcd79673b6d06e497d98dab8d4af631cf3a0993200a19"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.266/fleet-darwin-amd64"
      sha256 "5b7ba4be8085bc96cb48a1f22b755a1870892fb37ab8740b17b960a560835e72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.266/fleet-linux-arm64"
      sha256 "124a28c54f7d4d59800b7ff61b1f804b3021e3b37c2014dceae147e10ea84a5a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.266/fleet-linux-amd64"
      sha256 "03ce140cea803f4ccea2e6f32777942865eade382c2850f74e5a5da192d8f88f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
