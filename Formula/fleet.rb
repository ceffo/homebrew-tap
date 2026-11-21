class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.347"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.347/fleet-darwin-arm64"
      sha256 "641b32a31fa101d9c11e9bba4927857de7523752d79424b1c4398f586f20c8d8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.347/fleet-darwin-amd64"
      sha256 "da913445b23bc1ead171929430604fdc62bee2d936baf7eea9e7e04f8ac642b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.347/fleet-linux-arm64"
      sha256 "d9ccf75dbf2b92fb7d261a75f3ed6fd485f7570e64a58378e812e160e7e0b51e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.347/fleet-linux-amd64"
      sha256 "099f4fdb64402e1c0cde7937bb1784fb170c3e98b4669cc35b885c030df12c03"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
