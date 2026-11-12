class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.90"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.90/fleet-darwin-arm64"
      sha256 "9c6790cacd3813a4729dc3d8a2f406e7c842fcb715123176bab52fe9da0423e3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.90/fleet-darwin-amd64"
      sha256 "16eba149927dc975786b39bdc03bbf3a57a451cda79b70980c22b953a6c14b8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.90/fleet-linux-arm64"
      sha256 "1e3da78b74f1a2ff7f4e8fac59ff65b55b48d49ab29b437cc0d0c73e4ec95e18"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.90/fleet-linux-amd64"
      sha256 "baf8c9f27a38506b5110db609bef5bf5fe112538f6efae043344a69d6d839c87"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
