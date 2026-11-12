class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.109"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.109/fleet-darwin-arm64"
      sha256 "eb76f69d4bc7093e19cb3d40a2478d47d8e9eb4c76c7772e94d7b63337a07a93"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.109/fleet-darwin-amd64"
      sha256 "47c71cb3a6ba1abaafacccd6c53ac192b8962a78b83dab96454ec2af2d30ca86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.109/fleet-linux-arm64"
      sha256 "846758aaeb16582844d800dfce93ca1657ad0d8ad067ab473760cc5d73799f79"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.109/fleet-linux-amd64"
      sha256 "dbe433d485d71a5eb4fd059ee5d28602d0081716be8642d422f05baef5faeab8"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
