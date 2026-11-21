class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.367"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.367/fleet-darwin-arm64"
      sha256 "9118a18cab0ba12674216dd7eec21dfbe86eb33fc28566682f0c57f7297bef4c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.367/fleet-darwin-amd64"
      sha256 "35163f80e4d6fbb66dd4ada82081007004c52d5e1def5cddd69ed8051d30c316"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.367/fleet-linux-arm64"
      sha256 "ab4e9def849b556166d4619341aa49befce52c060922814c506fcefd94bd518e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.367/fleet-linux-amd64"
      sha256 "0442647f264fc94acd17ce84149632be9f545be2dbb717ec5faf3c5c066bbb75"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
