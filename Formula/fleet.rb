class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.286"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.286/fleet-darwin-arm64"
      sha256 "a8d74f2b21d8e78fc977cfcb9b7d20bcfc32b0cdaf74083383f2229b08b39756"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.286/fleet-darwin-amd64"
      sha256 "b46e814e9a408ecd921f645d2b06416b441cfb3f4711dfbc720c1a96e171ab5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.286/fleet-linux-arm64"
      sha256 "98f18d811d0622c2792ccf900e7328bb8a829d06375d11787425df30d9d63cab"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.286/fleet-linux-amd64"
      sha256 "bfe3a6e2dfc70e2b2090152efd8998680f89fbf876152162d1acbe10f6fe442b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
