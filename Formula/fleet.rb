class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.52"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.52/fleet-darwin-arm64"
      sha256 "b1434591f84fdfd9a599df24fbe21d9dd291acdc1210bf310abe8efd767a91e0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.52/fleet-darwin-amd64"
      sha256 "ba62c170dce6f0b584e017034cf522504188510867ca2bc7c4c5200ceb1f7c25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.52/fleet-linux-arm64"
      sha256 "12ca86efd9ea3ec36424c0039c5e8e6e4b20521c14abe7cac56e278c0c1132b8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.52/fleet-linux-amd64"
      sha256 "264ae2ecf830509bbcfc7444fb3dd04d03706b913a8bfa2ae475a1a8326d84c2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
