class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.10/fleet-darwin-arm64"
      sha256 "b140b6baa8ef06da378a57c136e21b8e844d9bffd63233338d3e95e5920bbb44"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.10/fleet-darwin-amd64"
      sha256 "a0dac3271eb5b3ca818e1d299c755327a294a3a657d96f57d6c2f1f6d86c4845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.10/fleet-linux-arm64"
      sha256 "8748fa1c34e66417ca18e2773cd033c997a5042963503f5f9964d09e460d73f5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.10/fleet-linux-amd64"
      sha256 "4e2c8372736f6b5b855b92542519df65771815582dd8d12a4399171ec2a3eb24"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
