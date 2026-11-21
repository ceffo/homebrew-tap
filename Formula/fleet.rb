class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.327"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.327/fleet-darwin-arm64"
      sha256 "9349ebb4b9b5f56ed7f70bf541a2fe2d53120b257a542f4fc83d58568b9ecd59"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.327/fleet-darwin-amd64"
      sha256 "da1e93d440a69f52e0a8c242409544867429d9a9a29c65f17f430ea75f0b7168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.327/fleet-linux-arm64"
      sha256 "4b7b5af1d7de92c4e9179c6ffd044fcbcbf771f18c9c37f5aaf61e59e08e7951"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.327/fleet-linux-amd64"
      sha256 "95900b51965088355e771d857eaf7643bc394ca5f8e2dc2a646117b6444e9859"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
