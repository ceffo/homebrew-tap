class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.15"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.15/fleet-darwin-arm64"
      sha256 "ca1b431e14dd5cd39477b4a6bb40bfcac80b8b3934ea441e38e771a27d1b59fb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.15/fleet-darwin-amd64"
      sha256 "19ed79c23b339f25ba895d0ec03c1ec71c8cab167c841287f7baff65dfa074f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.15/fleet-linux-arm64"
      sha256 "f82d536b2079e09efb657eff47aee077bed286cfffdb57969d2f88d0102a8a8b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.15/fleet-linux-amd64"
      sha256 "401bcff1b149607bc846268aba11f99a72d78d5b231b3ab418c57b3e1a5b3ee3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
