class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.221"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.221/fleet-darwin-arm64"
      sha256 "a3218c41f0aa6b3919a5f79c0d8442447797f8cba33a9dafbe8f6141ca93782c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.221/fleet-darwin-amd64"
      sha256 "7c896a2f759c872de91139944631e1e5cb9185339e4adce6f36b46bc093ff867"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.221/fleet-linux-arm64"
      sha256 "08ca2456af9faf43ad1eba30b63747ef6a603d7d9361426374cca25817c2c9cd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.221/fleet-linux-amd64"
      sha256 "bcdfd276165b2e693f60846dba775e167def0bf82e2c083ce5ec43682451e88c"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
