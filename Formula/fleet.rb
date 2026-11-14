class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.164"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.164/fleet-darwin-arm64"
      sha256 "c67f0f9438e8414f8475e1462dce2af19d45efd947558b4a0d1363ed56967acc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.164/fleet-darwin-amd64"
      sha256 "ba5c30ddd4f2476661a7155d2e53268a30ba760dfb0273d6aeae05d9c5ac0170"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.164/fleet-linux-arm64"
      sha256 "a2083c0f1effe9b6153319831327bf664c1d54363d88bacbe450477d39db9b76"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.164/fleet-linux-amd64"
      sha256 "6f8b17aa6a828722f25850193be168880dd56e54bb3f7664b85e3817dc27430c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
