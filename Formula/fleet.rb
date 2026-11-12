class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.66"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.66/fleet-darwin-arm64"
      sha256 "32e6876742db904ab0886bbfdc04e2081f8c130afffa54ac7205a1ae7f8f8984"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.66/fleet-darwin-amd64"
      sha256 "f2fd73c73aa442834e830122e41588699c400ec76d1e764667efddfadb8b940c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.66/fleet-linux-arm64"
      sha256 "473c611314307d0416f4dd3028082a838bcd43639b909218993ac7011cf79095"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.66/fleet-linux-amd64"
      sha256 "2d2399cf73ffd0f15ae00a3c047ed9156c0330b7966e1d5287d18e102c35d8f6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
