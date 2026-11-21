class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.378"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.378/fleet-darwin-arm64"
      sha256 "9549c62a0e0ec696175c440d099d84f46bcc1493e7fe7ea94916e39c5ed5b6e8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.378/fleet-darwin-amd64"
      sha256 "d2c00b14a8e12b91d7c14dc8dea22a0ee34382d532c4086febf5976307aca22a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.378/fleet-linux-arm64"
      sha256 "765978ce3d4da3ceadbd0cd317149fe0ea2ef575d2db0eebf9c9f721b1737ff0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.378/fleet-linux-amd64"
      sha256 "e47f5eb546d7f4ece29cf7324212560d788a2c29db9286ed72d42b4f0f79ab6f"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
