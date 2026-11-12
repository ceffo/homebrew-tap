class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.107"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.107/fleet-darwin-arm64"
      sha256 "7ff9a0e280dd3c11cee18300a6d5cb34902936bfead40e986deb0dd8af2d6205"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.107/fleet-darwin-amd64"
      sha256 "bda7b2df4343c728a070c5437b34ca830765ed744ece4d9b084f954c2f565fb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.107/fleet-linux-arm64"
      sha256 "7f36d9329e5f5af71a1c9fc2a5f0a5e42db54ba591f1fbfa438a8fbd440c23ef"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.107/fleet-linux-amd64"
      sha256 "5749c560fd00359ed1303f70e057d8df0265cdf28b27239431c1ca5b354b650c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
