class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.58"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.58/fleet-darwin-arm64"
      sha256 "3839e54ea236e5afdfb915fdba1e5d53c2b51057e166b6bf967faf1b808cec82"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.58/fleet-darwin-amd64"
      sha256 "9db949b2abeeb81e6cb48e72caee80fe3b6d66b16ffaff1e14ca9e9adb01d917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.58/fleet-linux-arm64"
      sha256 "4f0f0d597a87b92e4fb51abee7aadc536121e9d9747aaa350ad88b31b7b77f16"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.58/fleet-linux-amd64"
      sha256 "10a14f64ffa24c9f2175793bf9edc5a97a59f9a7d5cccb9f1c3cba4e0ab080dd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
