class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.210"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.210/fleet-darwin-arm64"
      sha256 "6aab4781f117a6cd3d749c27bfc74c3b573ee1405ab8fa317bac5d218e396005"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.210/fleet-darwin-amd64"
      sha256 "4020073d13e83d846957b6d0638f15ea8fc0b209e13513c32233ef58b62b6c2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.210/fleet-linux-arm64"
      sha256 "9b6cd454a338f06dd9c1940f8bf5221ebd12295bc1634e4e00ef56af000915de"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.210/fleet-linux-amd64"
      sha256 "2edcce288d651df2162d0e14541fe0e0b6239c64a4084138f8e55b9fc457de3d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
