class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.189"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.189/fleet-darwin-arm64"
      sha256 "97500441f8356be5fbb7f9477f18bd3f5a84d74194f2f78944014aaea4f6a830"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.189/fleet-darwin-amd64"
      sha256 "ded72267ad8b54ec583c0f04857ad7ccfbdaee87a1ec8e69787068762aa0d7f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.189/fleet-linux-arm64"
      sha256 "043fe325fa1a1de52ccacfee78d1bb6e954be1880030e94142bd2a9093649c41"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.189/fleet-linux-amd64"
      sha256 "fafcb98c714e3d51c59f1fb68c1bee6c00c214fce1aa8b444f7c73c35b2888c2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
