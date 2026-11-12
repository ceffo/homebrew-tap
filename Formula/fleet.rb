class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.119"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.119/fleet-darwin-arm64"
      sha256 "07ce2e7e30fefb8996f700f9342c0eed645694f4504bc03a3ebcb188c022aa25"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.119/fleet-darwin-amd64"
      sha256 "0bccc988d37a40c2d8b976f345f38bca9fd91dd44455cc5187b0d6ba4d240a5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.119/fleet-linux-arm64"
      sha256 "0b8bda60ad53eee1e90a47d89ca7ac19e0c382e5da0495b949ab599c9a92ed0d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.119/fleet-linux-amd64"
      sha256 "70a087bd530e0715d85e16dfcd18c16dae2370114e804d97d1033885fe80ae28"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
