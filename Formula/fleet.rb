class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.139"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.139/fleet-darwin-arm64"
      sha256 "fd08b193de1fdca35956e1a1a9edb7a706c80e424018fadd1cae2dabae3bf2e9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.139/fleet-darwin-amd64"
      sha256 "4483c081a57b27013c344c7ae9134947f24b1eee13d520c205138e13773e8eb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.139/fleet-linux-arm64"
      sha256 "4cd3c314017fd2bd13b8b50849b914184fe30a16a0beb6e7533585d4711033ff"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.139/fleet-linux-amd64"
      sha256 "cba7290352507a4c955eaf81455b905b9656b5f2940843de62fc6c18e11dabf7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
