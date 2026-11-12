class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.51"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.51/fleet-darwin-arm64"
      sha256 "97ccee5c545db2cf3e71694ba809adaa458e72bdf77d867a860614d978a276ef"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.51/fleet-darwin-amd64"
      sha256 "60368cb394c8491a9e50e39a3a2baf42b9a1f386895390086e3fd849c1afbef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.51/fleet-linux-arm64"
      sha256 "b7ed3e85f6bc200f226649074137294dd50e2ae6f279b5ce7ec355a5e61c67d6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.51/fleet-linux-amd64"
      sha256 "d1494e46ec73513ea84eb0ea691b2bd742552d729913c109f423ee7abfeec64e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
