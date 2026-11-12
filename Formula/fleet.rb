class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.53"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.53/fleet-darwin-arm64"
      sha256 "cedcc19096237d8091472e84fae8332a8d0ec05b1045b56668155f79d7d6d07a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.53/fleet-darwin-amd64"
      sha256 "916db5770c6494d0e5e6d67b5cbca9e85ba27bf802559949c77e22d641722c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.53/fleet-linux-arm64"
      sha256 "2cef8f08c23da84b13b1196bc08460cc30fbdd6bc95e1abcfe1aa6216bb39d90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.53/fleet-linux-amd64"
      sha256 "f9c16d93380739370a32702eeea48ebc29acb6200ae4aa1118fc4fe266677c41"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
