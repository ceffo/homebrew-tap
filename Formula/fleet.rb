class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.148"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.148/fleet-darwin-arm64"
      sha256 "bf3977361487dddf907f052ac6114fbdac276b2ddbc3e6bad903ee419d177fbf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.148/fleet-darwin-amd64"
      sha256 "273e5f057e0e663f6d33a52b0bdc3b1d3d727c38c35042d29e772c0c811ee69a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.148/fleet-linux-arm64"
      sha256 "03e0c18fdcbe0a3af823bdef1deaab3e90246282a57e8e7a928448d44582f898"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.148/fleet-linux-amd64"
      sha256 "ecb901bc1d1166bef17a17ec6ba9f5dc1b8f240e9096f93e544706c5924ed23b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
