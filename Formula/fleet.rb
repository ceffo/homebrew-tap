class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.72"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.72/fleet-darwin-arm64"
      sha256 "e80c2029b440fca97b8a5512f5efdd5659ed6a2a3da919725c17abef30a7436b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.72/fleet-darwin-amd64"
      sha256 "be4b4969f32e99e0e64f56fe8b3d190033e41fe37b3a2b990551c31d073616a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.72/fleet-linux-arm64"
      sha256 "c154f5434c77a0611216f6d9a86693cfb5f3ef4d22c0a680cc436845a7ad902d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.72/fleet-linux-amd64"
      sha256 "975dc2dd02cc62036b687eea3a767be40ca04c0aee47c38bf153fca76ff0429c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
