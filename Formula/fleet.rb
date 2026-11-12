class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.49"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.49/fleet-darwin-arm64"
      sha256 "6aaa553d20438c06c5c5fd20808d7ea0ecd8e3744d293b1c2ae4468cd07c318f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.49/fleet-darwin-amd64"
      sha256 "b8e9d45c8e72e3bf306efbb85aade201119f1ac4595489ae2abd7c5c1ae9732d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.49/fleet-linux-arm64"
      sha256 "d333b2953b4044421ba95188e3b093909c179e22e21172e693fc380b19599efc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.49/fleet-linux-amd64"
      sha256 "c6fd0dc4e13788b303c884ce1c60053b9fbbe36af77b9300324904e7a2829236"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
