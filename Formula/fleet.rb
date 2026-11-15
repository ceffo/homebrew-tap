class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.226"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.226/fleet-darwin-arm64"
      sha256 "333bc0d924c84019d25baf7e38dfc3bd4d8594170ee715b3322fe6540be995f0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.226/fleet-darwin-amd64"
      sha256 "49686860a3db6006da8368f3546635fbc5be782122a11ee02d2b99499444cea5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.226/fleet-linux-arm64"
      sha256 "34100338db3575a22f0b94416dbba335033c2f5f1b169f76415cdc724e4bb8d1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.226/fleet-linux-amd64"
      sha256 "bda68ac526ea55b0df2d7f004171014a4fdeb52c599400d68b42dd0dd2783013"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
