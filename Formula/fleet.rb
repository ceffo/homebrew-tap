class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.232"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.232/fleet-darwin-arm64"
      sha256 "d71540d24d61e75d7d5bfac101f3aebc66574209ffd82e8bac1c117ee685c8c4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.232/fleet-darwin-amd64"
      sha256 "6ae7c05403340e8c388aa1b49a02a4bec3042d427bf3b908ba094fb9046fc6b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.232/fleet-linux-arm64"
      sha256 "4fff5161be9897c1a24ea8c8be3f3d22cbc84b64923e8ca696b17cb45f726332"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.232/fleet-linux-amd64"
      sha256 "9e608d611ae688cbe227ff0561a72589a2f6ae79be7016f9b2e66340805b9413"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
