class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.330"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.330/fleet-darwin-arm64"
      sha256 "c2dfd3071e6b9420ea6f4d968add7e91f5638647d8fd06a8dfc57e49ab44dcf4"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.330/fleet-darwin-amd64"
      sha256 "3050ffab35aec9683f282db4dd02f20e38723667269e85813e11e4ccfc1fe4dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.330/fleet-linux-arm64"
      sha256 "b0628f72acbef18bf0e7b3a5ff045106f9754ce67676b974e49f3ecccef0db95"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.330/fleet-linux-amd64"
      sha256 "c99546e5d83299ab2e5bcc341f5291c2ee66dfc4f94c13e6b387b4db624607ac"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
