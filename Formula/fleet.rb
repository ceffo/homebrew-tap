class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.208"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.208/fleet-darwin-arm64"
      sha256 "89f190048de3f410f487acb9b36e3a101a074931d6653deb069caf7ab4409043"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.208/fleet-darwin-amd64"
      sha256 "4e35d548a3a7a98d50daae42d82b589810cb8898d99db3b3d324be54ae51d5ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.208/fleet-linux-arm64"
      sha256 "6fb32e0596ef004ac0d2873697a90f5bccbed3aa66da4d52580546ea75b22362"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.208/fleet-linux-amd64"
      sha256 "838d003a1c5d2947add7330ca754c55cbb1fed22737506c41d01fa4acff71ffb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
