class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.216"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.216/fleet-darwin-arm64"
      sha256 "b0d1e2556d72864abddf2377a8fc17f64ffac7fad2bf71ff913a659b92954bc1"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.216/fleet-darwin-amd64"
      sha256 "a9cb9fa71c28ce96ed6041ea6c55c14200b3c999023615b3109f2fec0df3fa6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.216/fleet-linux-arm64"
      sha256 "3072342870f346430839538d55c91a164b81fa26ed1894584aeaf5670192eb95"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.216/fleet-linux-amd64"
      sha256 "7a6355289c3b7def03bd1dad685d573c796aa0fd69ad53e669c9d64455748d95"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
