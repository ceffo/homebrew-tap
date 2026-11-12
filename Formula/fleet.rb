class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.54"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.54/fleet-darwin-arm64"
      sha256 "7705baf75fae284d8ba2fdb0da7c0c2e863b476d5792481fc3304c9c1197a615"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.54/fleet-darwin-amd64"
      sha256 "0514d691d170d59c1900871664e4b9cb9c15d0fd5e25e8c77903fba3f139c429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.54/fleet-linux-arm64"
      sha256 "4187ecabbbb064941a32350623df407a3f14ab46cafbdbff53f6eba053602464"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.54/fleet-linux-amd64"
      sha256 "d7a999cdf5b74fad4270caaf66ef85675a7740eabd1c44748ddbe421b805789b"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
