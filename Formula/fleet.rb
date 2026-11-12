class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.46"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.46/fleet-darwin-arm64"
      sha256 "2f85b6fd5d77e899edb54a554ae10fefdc3f8444ca73b40cbf12af8ee55e21f4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.46/fleet-darwin-amd64"
      sha256 "70eabb03be3156de55bbc49d69ae09e827e42896964c48f22e18598d119133bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.46/fleet-linux-arm64"
      sha256 "0064523e71254945d6ad8b20cf65ee65a34db657296e7e221cc85c3399f51ad4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.46/fleet-linux-amd64"
      sha256 "f59c34e0dd2fcf6425d63f15287daba5c19a0dce4d0c71c44df622ecaeb23835"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
