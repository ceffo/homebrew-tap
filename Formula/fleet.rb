class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.94"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.94/fleet-darwin-arm64"
      sha256 "90f201c328deee12bfe587318c0168cbd2a608027111cf140dc17828c702ad8a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.94/fleet-darwin-amd64"
      sha256 "2cdd1ebf24675f98c91900dedbccbd09211dfd817d6f9e966229ed67522004a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.94/fleet-linux-arm64"
      sha256 "8987be2fbbdc40e2298d2f33cbe1ec5c261d9f1a9c85ad8a18c20c5d33d1eb84"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.94/fleet-linux-amd64"
      sha256 "404ca8de4777a6e47af799d05c818d47d01ccaa726de2522d28b69ff2dba3b32"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
