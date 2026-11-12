class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.59"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.59/fleet-darwin-arm64"
      sha256 "0bef440418b3fed3c54cee97219f39135b9a9cbd842a95956bdd87c4ad46e909"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.59/fleet-darwin-amd64"
      sha256 "4ea9ddc723a59b5603d3481e8c77f04f0441395809257a229a113ab7bf12bc10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.59/fleet-linux-arm64"
      sha256 "a6b48ebcead073e6bc1dfd84a69db931e954795f04519ed0dc6ae21ceb0fb318"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.59/fleet-linux-amd64"
      sha256 "a3c136bec6a192239ca4a107611f6360fed3781c20553875f5a1a5ace6eeadc4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
