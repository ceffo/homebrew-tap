class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.99"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.99/fleet-darwin-arm64"
      sha256 "a12c418882f6511f8652ec7c3821a88a7c32b077ccf409d4162045c7d2114978"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.99/fleet-darwin-amd64"
      sha256 "04c20ee0c901dd4114f2287ff741a33e8ef3539e18e8bf95632420c0d1488d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.99/fleet-linux-arm64"
      sha256 "71ecebdebbc883b978e2e566fb51ac767f1fd03916e89ddc68a703cbca8def3d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.99/fleet-linux-amd64"
      sha256 "2465924282e007059c7ab59605c291a973d159cae84529b4bd95e2f615664170"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
