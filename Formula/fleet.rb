class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.309"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.309/fleet-darwin-arm64"
      sha256 "c141a9c9f20ab22a2f799295fc7c199a336d29bbdfeda4de0d350c819bd71c37"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.309/fleet-darwin-amd64"
      sha256 "669367b78ce2a868b54f3712f456de7e9d825fdcc77c070c4488312be53b7b2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.309/fleet-linux-arm64"
      sha256 "e38a99fb64a2f850e3a4d1dc86c0d0385d852efced81e7e7d1cd45b06a645a30"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.309/fleet-linux-amd64"
      sha256 "4b38e6320673800d0d2247580e69b9fb883ccebf3f586670746541d40aaf7cf0"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
