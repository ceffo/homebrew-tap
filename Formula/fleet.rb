class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.374"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.374/fleet-darwin-arm64"
      sha256 "9bea34ba8afead14189cd5d90c8130bc15bd7784541bfadc15e3b0631d5d6d6c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.374/fleet-darwin-amd64"
      sha256 "03d78390248e4005a5be73443654897dc4dd081f9e8749a1cd3813ca602e9288"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.374/fleet-linux-arm64"
      sha256 "6b56342b41e8a84bfda561b422193b25a84b6820467d041cd1fc421887f9bf83"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.374/fleet-linux-amd64"
      sha256 "e53acfea0223f34d487b502abf8008ab5fd41afef1c62cdfc740866bb595ed41"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
