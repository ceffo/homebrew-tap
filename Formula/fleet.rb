class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.179"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.179/fleet-darwin-arm64"
      sha256 "dd90ed3e17060df9737fb1e689de2a69577f55e6cfcdf1d53fdb3ea41bd49a6c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.179/fleet-darwin-amd64"
      sha256 "7f40f18f82651a5dc2e46d3bd81bb60cecd246d9abd115cf974676f2a86a66b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.179/fleet-linux-arm64"
      sha256 "e82258509b3a3b30ba18530c6e9f87e3cdae7a8a1393a8ffe2445773805c5d69"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.179/fleet-linux-amd64"
      sha256 "4248d305221a276560710d4cf1d8562986b6d7d4aa4ce9ef82605f7312223474"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
