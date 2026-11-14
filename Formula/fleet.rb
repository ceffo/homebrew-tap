class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.160"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.160/fleet-darwin-arm64"
      sha256 "378aa164cb0f704cd17dc7cea5af9b3ce533b6e643ded76df13f12312cdd867e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.160/fleet-darwin-amd64"
      sha256 "5d640eb972f25ee9897af3addb2feac9318c1c0106f1de80877d4c6357b6a73c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.160/fleet-linux-arm64"
      sha256 "383362879f74b2cf6245f32491facea2bd99af3defa9985b48a25438dc919030"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.160/fleet-linux-amd64"
      sha256 "a5db0a945559883490e96ccd3591d369adb216de49b60b551ee4270a9b85ad5c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
