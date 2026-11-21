class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.360"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.360/fleet-darwin-arm64"
      sha256 "de8d6a85ef512616a8114b19d6d72a69a26beb25af55aa69b9cc8b5664a12c02"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.360/fleet-darwin-amd64"
      sha256 "d9c538186e4ea8b0f41f5672172e7fcd3e6fc9f3b5a216641dd41d5b536e6138"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.360/fleet-linux-arm64"
      sha256 "35fe64bc8ffd9c7cbca4d3153fa600c41871ffa72ff614604d221889c08d3442"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.360/fleet-linux-amd64"
      sha256 "bd67f7e62fc8cf5d1d0756c979a93fb0b79d6dc4e0b60242387f5f9f543052a4"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
