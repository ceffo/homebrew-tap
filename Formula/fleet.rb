class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.225"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.225/fleet-darwin-arm64"
      sha256 "6c913e778c94626f99044ce4f4394ec1ff02c030f6ffbb634b6d3de1cb300f83"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.225/fleet-darwin-amd64"
      sha256 "84f45d57448310d312b161e6703289109a0dc3784caaab982194e99cf4989599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.225/fleet-linux-arm64"
      sha256 "97e247c70a67589fef2610e8bafa8d8436863166a33d001d64cb8b783ac6bf53"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.225/fleet-linux-amd64"
      sha256 "a94a1cb3ea95604a3a1d34117b327fe8d21b7262c7c69ac6065242319fecb52a"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
