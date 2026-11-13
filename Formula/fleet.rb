class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.146"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.146/fleet-darwin-arm64"
      sha256 "d549926ca6eb550341720615b65ad4a999495cbd600c4279daba8481e63d991a"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.146/fleet-darwin-amd64"
      sha256 "13571b716257b97ce483986ffb68227ed5f608673032bd790488a876136c8baf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.146/fleet-linux-arm64"
      sha256 "f7058abb96a8625985db009619e7f018ad522f4acab9320eacec4e310ced54f9"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.146/fleet-linux-amd64"
      sha256 "e635bd2e4fe74f865a97e870e554f88b570cb93daa7bb95db9c318620aa27d38"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
