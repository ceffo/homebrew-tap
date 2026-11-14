class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.192"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.192/fleet-darwin-arm64"
      sha256 "5b795546bbfc19cd1807dccc3baf212c179ef2534cc2f702097d89fbb09977fd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.192/fleet-darwin-amd64"
      sha256 "6de32697fd5a456472681e47fa9f0bee278b73448ebb737d43f3dd72fbc7959c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.192/fleet-linux-arm64"
      sha256 "47c7186045e02bedac0363987520a3b761e3c8f4b78779d3f072ef8c71a6ccea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.192/fleet-linux-amd64"
      sha256 "65dc626bee71432e3d96987e191f05fc6f14b7424ed94d8254eb6bcc29bdffc9"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
