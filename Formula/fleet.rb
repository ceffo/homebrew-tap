class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.343"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.343/fleet-darwin-arm64"
      sha256 "6ae7243ea34da8b66b6ac551f957fafafde1fd44e891f2045130f2a5f408f535"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.343/fleet-darwin-amd64"
      sha256 "73c925df0248c69e8c9a1106aa067e052790d8550e863e58ad65a70bee2d8e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.343/fleet-linux-arm64"
      sha256 "c79f9f1ef331902ebe37a43b04b7f10f60d870dea6274da0be393f72de360083"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.343/fleet-linux-amd64"
      sha256 "21231c60937ce77a6643f5cf2ff6dcd8aeda81b79a445a192e4a0d816ef1263e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
