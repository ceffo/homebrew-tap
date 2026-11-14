class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.199"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.199/fleet-darwin-arm64"
      sha256 "8a379c7b824b11b8cb803514645c76a3bc662590bc5da44f8613f7ed32281790"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.199/fleet-darwin-amd64"
      sha256 "45bd17a502fc85a2db8f28766e468a8e17d1bf6263fe861d9392bd4cc3ce417a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.199/fleet-linux-arm64"
      sha256 "7357b4a2d96970b9cae27fa65724adf6cdbd1276cafa44d8c4425d1e2dba0336"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.199/fleet-linux-amd64"
      sha256 "954bad677e7666bacf9b785ddadd0abf9d0f678278588a62c95a07823a21c045"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
