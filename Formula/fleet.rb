class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.123"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.123/fleet-darwin-arm64"
      sha256 "d0d132bee747e654373f3314523aa09cc06647d15cd8444d8f469287a7898cd0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.123/fleet-darwin-amd64"
      sha256 "2fc1a2b82852558048e719b91fc7fd304e1fc5eed5b689da06d71411009feb66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.123/fleet-linux-arm64"
      sha256 "bb4aca9a3799e32bbd27e5d5e139e23970f0052640865e4c5b2d580537d3ac9e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.123/fleet-linux-amd64"
      sha256 "78bacf34a3822412c27306a3915f2771108e42002cdf35290d1b42a70a4e3213"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
