class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.235"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.235/fleet-darwin-arm64"
      sha256 "b870a428258d59ef68a83787158b38c66bd4b4a988b6c4bf11f0d0a63f055dec"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.235/fleet-darwin-amd64"
      sha256 "ef02accc50977f1dea8adf823d737eeb7be1c693eb86d785e440d1db04a94d6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.235/fleet-linux-arm64"
      sha256 "b6cf3a0a9cd5432272f276404fe1b3da27bf6829c34d77b41664917eeff065f3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.235/fleet-linux-amd64"
      sha256 "306e1f0a8e03c93ecddf23b41c0e5678dc6599c00597c6e46a429daf2c77cd63"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
