class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.170"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.170/fleet-darwin-arm64"
      sha256 "eb25cf4cd0fa34782ce8e26c458315c0deea9cd07cd8b588f901e55928ec2442"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.170/fleet-darwin-amd64"
      sha256 "a5d693d263f31cab194ef329c4af1f36dc9c61a38cb90a8cdca0703667e8e533"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.170/fleet-linux-arm64"
      sha256 "3b150cd0289ae749a828d2dd579c2ff23f44be2fb21c438f90c551fdf0c02689"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.170/fleet-linux-amd64"
      sha256 "c66c4793b41cd18b009bfba8a53edd322349d16eed7c15c5a0d96d0933c78cf4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
