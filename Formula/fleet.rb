class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.252"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.252/fleet-darwin-arm64"
      sha256 "ddcca485868a63f1d50bc9a028057951fc4afbb52c5403a4ad8ede99bb5feab6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.252/fleet-darwin-amd64"
      sha256 "fd4ee4cf2b5a51261e9279ef078161d4d03b7135f9eb90623ac568799e842730"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.252/fleet-linux-arm64"
      sha256 "66ca67515798574e8e24ab183e1aa805bdc0b3e1b96f105de1d20a0c0700c959"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.252/fleet-linux-amd64"
      sha256 "ec7771b509271b624a399a7a12471c2a4a18dfb6527fe95e7c4703a54b6aefaf"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
