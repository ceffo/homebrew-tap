class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.183"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.183/fleet-darwin-arm64"
      sha256 "617c8d0a7c89a1eb5ce606fc9be8a137771fc34f95310a400362e38b4e518ed5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.183/fleet-darwin-amd64"
      sha256 "3e6017336f9da6dfc19b7261a52922ac915658995715fd61f9c3a2fbe78c5989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.183/fleet-linux-arm64"
      sha256 "c75d8bc3d7a0cb4cc6300c4b958b1a63f41063022d956d5d962f032ff36adf6d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.183/fleet-linux-amd64"
      sha256 "55dc2ec3513205dc8fb253398582f70032a959de294035393675813be4c6e1e3"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
