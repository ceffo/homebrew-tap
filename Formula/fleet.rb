class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.279"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.279/fleet-darwin-arm64"
      sha256 "09f73114f08c4dba868bed2d53ca108b16c2c5ab49be533d7862b8747072ad0e"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.279/fleet-darwin-amd64"
      sha256 "6999dd4d6d7dc3ac5dabb179a8b0a4c6094c995e9cda70516b6f70db00673285"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.279/fleet-linux-arm64"
      sha256 "b1df96e75f9bd5031dccd3079c14fac19a3f1c6e9f5015c1bb39781210231fc3"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.279/fleet-linux-amd64"
      sha256 "62640cc1ed657e96a4ea42faa5b8e3cc452a50f7d5726b9d664fe45e2d408bde"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
