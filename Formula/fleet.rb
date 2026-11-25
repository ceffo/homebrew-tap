class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.404"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.404/fleet-darwin-arm64"
      sha256 "47a68d9aa40f02da18bf08d08e8c1318791971abb25a488a515c59e0f0342bb7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.404/fleet-darwin-amd64"
      sha256 "16b49ad86d42106c32bf6c4205b52bfe9cb9d4c936e64fcb5fff61f6a2b8becc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.404/fleet-linux-arm64"
      sha256 "f2213fec11a54105fe8dd6ccebd852a98651cb71ddbd3c2312a60fdfe55a9db5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.404/fleet-linux-amd64"
      sha256 "ea9f6675c82b1ead585bf0ef8931b3c9957465c51399570a1ea6866eb0a7daa5"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
