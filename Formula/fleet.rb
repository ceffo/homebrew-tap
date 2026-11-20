class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.322"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.322/fleet-darwin-arm64"
      sha256 "b61eed1fddfe4e48e9059e3b48ee32417f7c92b78b9c33435c4f958e0fe2dd6d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.322/fleet-darwin-amd64"
      sha256 "ec49a36a178abfd9b30c16e56c4e92642b1513695b7d7eaab8cb5156e32eb55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.322/fleet-linux-arm64"
      sha256 "e9fbf49510cc54e5c8d975af44305154368769a4cbe0197c4aa115c6c1aaae0c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.322/fleet-linux-amd64"
      sha256 "c0f3837a6ea3a3dda9c46e49ff02f8cc9c2032b49639a338c5f4be9849a5ccaa"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
