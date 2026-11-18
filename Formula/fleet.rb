class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.311"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.311/fleet-darwin-arm64"
      sha256 "5d0eca0ad13ca037d2fa9369137035345353a3f58e1dfeb22afefb64583ce21b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.311/fleet-darwin-amd64"
      sha256 "ff7fe7ef8e87aa4a50907d78afd94cbac389a322469b848ddc31a7df69c4f21d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.311/fleet-linux-arm64"
      sha256 "96e7706cc2f66057b8fca95419a841d27a747d00db5446bb7a4a0bd713bb8d8b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.311/fleet-linux-amd64"
      sha256 "d4fea5b9f6cca67bdcf6f1a4607fd2ed000899412f60ca042d841d35949a9f77"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
