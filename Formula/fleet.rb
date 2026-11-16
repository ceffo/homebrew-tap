class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.248"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.248/fleet-darwin-arm64"
      sha256 "4012dc74c1868aecf7d24d9f3bd4b8ea81bb33fbaf5d19fb128b71605cbe1c3c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.248/fleet-darwin-amd64"
      sha256 "90e83c9a890732642497a166237281a00dfa7adeb7a4730a89e825d8ee028e70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.248/fleet-linux-arm64"
      sha256 "1fd5233b8d2890ae201417e02505662d30f7dadb3d7ce485413142f4b98afa03"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.248/fleet-linux-amd64"
      sha256 "6d6e29f9f32fcfa0d5a46854aadd6826befd0cc9affbc514d2fd10f19427cbe2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
