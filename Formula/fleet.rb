class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.96"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.96/fleet-darwin-arm64"
      sha256 "1212d8bec73eaaf286d2e3085afac57d863d4356b6ad9c0aae6b6e7d48f87a47"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.96/fleet-darwin-amd64"
      sha256 "47b1688f53e47b08089639b309920c6918e93b74a5cc88632a5a551dd07a05c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.96/fleet-linux-arm64"
      sha256 "4502a11af46b2d693f636d6ccd3ff218841f632ec17f69e48458f9383b5b181d"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.96/fleet-linux-amd64"
      sha256 "15efc0d5279be15d5272fb8f3d636163876cd477a5d7a1325584c30154c624aa"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
