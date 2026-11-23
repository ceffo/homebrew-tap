class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.398"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.398/fleet-darwin-arm64"
      sha256 "f0e170bbb4a2a8057ef1f8144da9ec922dd4a2eae2125ced2c883b467bcabd81"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.398/fleet-darwin-amd64"
      sha256 "2207e22856a3e78b4e45366df41c3f227e3ed0065d6d757197e7635890d36847"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.398/fleet-linux-arm64"
      sha256 "c0143e27d42e0db625540f2ce37dd7896d066725687b5126d27681515d30f6ab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.398/fleet-linux-amd64"
      sha256 "abe74be396e8e41763df82b0ec28997221c28b3c6f424c56116c1af63b837725"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
