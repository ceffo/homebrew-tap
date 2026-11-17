class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.273"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.273/fleet-darwin-arm64"
      sha256 "2cb295e7c195e2c17e95f4185488c4342b18b53f483b3f720452e45de64bea23"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.273/fleet-darwin-amd64"
      sha256 "3b13d996db9ff937876adabe5125ab1de84c7f4647a794872d61a96871e0e1e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.273/fleet-linux-arm64"
      sha256 "e6c8a598947124f0eea6f027d8ad6b16cecd8f5c7c28518b393735110bcc80dc"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.273/fleet-linux-amd64"
      sha256 "781bbda8184ff299efc44a43a84874b94a65f51f4312debaa256d3b362b8f39d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
