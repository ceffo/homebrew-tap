class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.359"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.359/fleet-darwin-arm64"
      sha256 "ceb76606f29d9b0b629fc242d5219e63c04e9aef96fc21f1db18e14ce84827cd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.359/fleet-darwin-amd64"
      sha256 "19207341e152d8e1b949f08f231eab351a42c9c8928ba1d0c1aa7ee18794478a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.359/fleet-linux-arm64"
      sha256 "efebc10d512a90c5f7be209ae6ececfd706594cc04b1bd28bd5718bcd3bde764"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.359/fleet-linux-amd64"
      sha256 "b375532aca52c273751eb172303f95bdbc2985bbfe11c44d5ae931fdf704d372"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
