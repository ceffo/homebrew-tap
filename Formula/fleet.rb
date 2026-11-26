class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.405"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.405/fleet-darwin-arm64"
      sha256 "42d36e53dfb27e513b228b28389206f36ea3afb23fc9205bdf587a51ce2d0c9b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.405/fleet-darwin-amd64"
      sha256 "bd8795b5c371362d84dd90b89589a55b4ced4a1789c7509059c0a58cc18a5a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.405/fleet-linux-arm64"
      sha256 "0548d2739dbd17d1e7d43e7c38b3b35cbebcc9c8405f4aae5649066745ae018a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.405/fleet-linux-amd64"
      sha256 "efbf7942397d628b2405666ec34c2e6084f4e3d1325136439942bd247ab28bec"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
