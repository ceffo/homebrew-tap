class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.140"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.140/fleet-darwin-arm64"
      sha256 "7a1db7730252ecc5b9ef218cd95d6f62d04d69c3dd4ef3b9ee05225b10306ce2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.140/fleet-darwin-amd64"
      sha256 "c0b0815445552f19507ddb165c31abac16f599dd6a4b8b92977c573a6b1667fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.140/fleet-linux-arm64"
      sha256 "6edb22c56ea9f434c5f92eead8d129dddca72736774ab7252eb5e712a3381356"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.140/fleet-linux-amd64"
      sha256 "1fae2c731b0a20e9cdd16b5b3f70ceb6cb8a160149d8965277e5166713acb655"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
