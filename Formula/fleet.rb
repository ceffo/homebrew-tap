class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.406"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.406/fleet-darwin-arm64"
      sha256 "89439746ada8cda3fcfb4a82622db61cb67dbcd70b2ed19a02077ab2a5288586"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.406/fleet-darwin-amd64"
      sha256 "750f76cbbf7dc8d5c8132636e962fc883170348c7ef43686493fd755e2b0391c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.406/fleet-linux-arm64"
      sha256 "ec45f204efe94aaa585314f8736b31877430282e7d6855c8ff50cfecb3041da2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.406/fleet-linux-amd64"
      sha256 "152b47b899177fe9e3c16d1990753ec6fc28e76fcb2bd68738265282f96e20f8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
