class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.361"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.361/fleet-darwin-arm64"
      sha256 "fd8efeb8545e71e4756e66633fceb130cd29112004206beb1f99f493a25a811e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.361/fleet-darwin-amd64"
      sha256 "3da7b484c98d69b830dd876bb2831b818aaf72d9bea99c5c44563cf5a36a48c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.361/fleet-linux-arm64"
      sha256 "9d34463dd56b670ee9780a6a1e4ceffb7a7b7c7177af3af6aac8113cd6d76abd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.361/fleet-linux-amd64"
      sha256 "fb18ad6e06a00c102c89bb8bf2135ce15ddf1a9a4a00f36e5d588a5461a6c789"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
