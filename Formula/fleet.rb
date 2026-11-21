class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.358"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.358/fleet-darwin-arm64"
      sha256 "1681dd47778f4d5c437c9458d1fa947c89938610001b293bcaa57df0faf47f86"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.358/fleet-darwin-amd64"
      sha256 "41a32289f1873e900f5cc9326e42aa2aa68474ffede3b874109fb2c18ec2c826"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.358/fleet-linux-arm64"
      sha256 "d0e1c0d979c09ea11d0fae4e7b948562fdb94c19bcbd3413b649684cd6e29bc8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.358/fleet-linux-amd64"
      sha256 "431106b3c6e5709a3880d46905d15b4cd68cc9035326ef49c4046ff82ede2ad4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
