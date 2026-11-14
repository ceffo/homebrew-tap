class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.159"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.159/fleet-darwin-arm64"
      sha256 "95fc87f04bbfec40e77492731d6629d1d2c7d285befe609c760c652d093ee198"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.159/fleet-darwin-amd64"
      sha256 "5850be016b2f162aa5f020452aa7669704c6dafe7942d58390ac08268fb9d27c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.159/fleet-linux-arm64"
      sha256 "4be9c9b49810e9454850c7c10932c59f5ae92e75e8e92b64d6b9c3415e436a99"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.159/fleet-linux-amd64"
      sha256 "62c2fc27486c827dd0ac9c7fe844ce9eeb6d358319e4cae659c1612efbcc9668"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
