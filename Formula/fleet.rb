class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.234"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.234/fleet-darwin-arm64"
      sha256 "89a146844584c9e8dc0b9f29f62d733955d53abb41465fb14b5aeb7636195a54"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.234/fleet-darwin-amd64"
      sha256 "7f6e45ba34fa0c8995fb507e12d7f1f54ed52b29d9e05dd91cd3f57e35a52973"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.234/fleet-linux-arm64"
      sha256 "1da53f4b1098a7f718657ed75c13cfc2519270d3cfc89811ffea347b198e32d7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.234/fleet-linux-amd64"
      sha256 "2c718407d706485799ed39daf9e2cd9b2f2bfb4492c685d22ac6f9a304d150cd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
