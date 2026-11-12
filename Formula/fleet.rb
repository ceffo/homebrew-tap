class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.60"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.60/fleet-darwin-arm64"
      sha256 "8cbd537d3774cfeaad22600b61f5ab7d2f857c6d60c679eda5115641042b5a4c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.60/fleet-darwin-amd64"
      sha256 "9746e680d71b26d72bf44f671a3985102c9929063cd9442588edc3e7d888346b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.60/fleet-linux-arm64"
      sha256 "9cf3053af41f0a3d695fca2304db0a8d983f58567347e4d3c68e821883b55a3c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.60/fleet-linux-amd64"
      sha256 "3bc66714197dcf8f91c670037ad3be3eeebd89ef5778024ad6d03a27df0df2fa"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
