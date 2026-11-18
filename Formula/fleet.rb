class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.310"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.310/fleet-darwin-arm64"
      sha256 "2b76253aedd5391c3aea32dd37ec87ec8b703a8b2305bb74b192db1c94bc8bad"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.310/fleet-darwin-amd64"
      sha256 "72b89c504e8b070c7a0e79de5e24f73f78935ceb45ad4c7cedfaae0562840f7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.310/fleet-linux-arm64"
      sha256 "8350dfa623c1277d2261da930308a4ebeb879032692d18425e783ae5dbd963cf"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.310/fleet-linux-amd64"
      sha256 "1bd0ce6f247a8f20fa7ab27ec0bdc54b8bc3092413b2a9c7dae97e796b8ad0cd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
