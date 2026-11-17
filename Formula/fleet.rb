class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.264"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.264/fleet-darwin-arm64"
      sha256 "955896a3ccf4cd911e3ad9855fa08ab18f769beab595fbf3cc41c464057b6e1a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.264/fleet-darwin-amd64"
      sha256 "9afc596f753de232f16c1d17c180b01e69616d976946ea3eb4ad2af53c7ee762"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.264/fleet-linux-arm64"
      sha256 "915573125a298d6b76e5bcbde0d825a935f4806d42c05fd930b3a45e10b6613b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.264/fleet-linux-amd64"
      sha256 "42875a89b280bac3888135a8085feed055bad6dcc9967ba67df6647675887753"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
