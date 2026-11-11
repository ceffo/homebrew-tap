class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.44"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.44/fleet-darwin-arm64"
      sha256 "855ef2860d224f1878ca1a49222d31d4916f8a6393e06bcca4b11c97aa8be2f0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.44/fleet-darwin-amd64"
      sha256 "d1e59bb384d0d7715862a62c5eb1ce9a2fb216ff158ca02882e69e75edbcf99e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.44/fleet-linux-arm64"
      sha256 "178f81e01a0c04f39d0bca099f7c309ccdf1b8d64685f165d32ffa3b88f1ba2e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.44/fleet-linux-amd64"
      sha256 "597550d90e8ac6c5629090aa31a3f8054c83a23fb80d2157f736a007657c0de8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
