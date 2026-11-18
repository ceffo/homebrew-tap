class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.307"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.307/fleet-darwin-arm64"
      sha256 "c8ecdb5236139d0f61b46be8eec9a02e8617f2a3473f44896d74794e99f03572"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.307/fleet-darwin-amd64"
      sha256 "97af925a090872a07baa2741836ee20bf23e7728c47a9c586dab6152ce390606"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.307/fleet-linux-arm64"
      sha256 "be641a9f5249ce5e460d416e026328d348ee076f6aec02e1288c059b81db6deb"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.307/fleet-linux-amd64"
      sha256 "5e3bed079e779141e504c153333cb1d9ff87f51a7f821b6c6ff3a4cfdd8a38a6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
