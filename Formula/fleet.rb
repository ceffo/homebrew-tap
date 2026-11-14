class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.197"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.197/fleet-darwin-arm64"
      sha256 "804037522ae913df3da75d96a090496da25e5279257c5e0bf7b5464fc0adef2e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.197/fleet-darwin-amd64"
      sha256 "101246ad599b7ed00eb4901197c6094ff7263e25966a94b2cf0920bbe5827e9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.197/fleet-linux-arm64"
      sha256 "03e98128e699ea3d5d72edcbbf9768a36918ab56630075d8e883431e2bc78d69"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.197/fleet-linux-amd64"
      sha256 "2cb77a655c440008f28b84d0a732636f827612a0051be7d4b4fd4c3a82c9f0cb"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
