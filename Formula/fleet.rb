class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.399"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.399/fleet-darwin-arm64"
      sha256 "ee5155b6f0af81dd9ee3df5b84fb2a9fbf157653e6a7c091656f1e38b9177f25"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.399/fleet-darwin-amd64"
      sha256 "06f9107d0a20a44d0c901113a0ad55d749f908582c09b07294d5952ecbaa829e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.399/fleet-linux-arm64"
      sha256 "38c53acf4aaf09be48581a2904d1075a0067c5ac7f4168b3d17e67b8686b1428"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.399/fleet-linux-amd64"
      sha256 "7813be6dc55b37fb7d309035c1fb15f8af36a893adc9d236a03dc4f7137919de"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
