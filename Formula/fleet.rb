class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.121"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.121/fleet-darwin-arm64"
      sha256 "338ca2dffa8980957af23d69127f5d6d46b4877e381ca8f8073011bc5795d7cd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.121/fleet-darwin-amd64"
      sha256 "01bdde7fe428a1744eebd8aa33e3024d6a6883f202403ffae98816a85b78b363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.121/fleet-linux-arm64"
      sha256 "5b5cae2b53fbffa37d99c0b55210be5691bea58411bf84a78eb9203da654857f"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.121/fleet-linux-amd64"
      sha256 "b9759f85da6fa3a3acd411c1eb277178f23513259495b23dd74eedfa8213515e"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
