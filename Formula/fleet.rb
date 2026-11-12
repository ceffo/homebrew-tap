class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.104"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.104/fleet-darwin-arm64"
      sha256 "891acf94919a2a1eb731f334b141c3860cbaa92b5fcb78ed884326b651a6afb8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.104/fleet-darwin-amd64"
      sha256 "a6cf98bc2e47bb7f6621d4f82cda85aada207d8d9a361171787eebaea57f0f63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.104/fleet-linux-arm64"
      sha256 "53104c200a538dec1c5608fbf98f1dd6d4b2ffe5b7044fb34cc200ad1c9d9913"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.104/fleet-linux-amd64"
      sha256 "23db1768d3664b498f362130a72fe2b41e4e0c0ca546c91bc902813784b058f6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
