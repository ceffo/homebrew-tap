class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.136"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.136/fleet-darwin-arm64"
      sha256 "b6ef4de06c0547f7b984e8b9c4f9291932a4a715f1eaf6e438581ff43656f3d7"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.136/fleet-darwin-amd64"
      sha256 "d0e65eadf91e9ba1d79ff434c2cac5a0abbec841dae6d52627672ad870deed5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.136/fleet-linux-arm64"
      sha256 "110fe8606ab8b8adda0b6c96d7a9384570e2f59805365a9e4b43cdc48342b8b0"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.136/fleet-linux-amd64"
      sha256 "d3f7e8c42e7fbda11970b80b68563a428b0fbd51f3f11cbc11c046571dc57de7"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
