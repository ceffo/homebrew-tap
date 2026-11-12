class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.69"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.69/fleet-darwin-arm64"
      sha256 "16b84e4728b5f1b073e512b74387c357aaa3b0472b4566d69790dbf8a624e9d5"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.69/fleet-darwin-amd64"
      sha256 "0c61c4e3f9af004def882a7c0f6281cfd76f647f75b3f3ef353b0d6fb53d1f4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.69/fleet-linux-arm64"
      sha256 "84ad0cf67d791e8a9455f3aaf9da919f66368617f25a0e34896a629ae33c81e7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.69/fleet-linux-amd64"
      sha256 "bf31692b1ce0de5eb291f18514136acfbf386588e683c91f3616930f930ee528"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
