class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.185"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.185/fleet-darwin-arm64"
      sha256 "05cd49793f65382b1473e713157d13130d06fbe463826adb3d34c603a356ed5b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.185/fleet-darwin-amd64"
      sha256 "57165ab8795504ccaa8252610340d45f6073f56e07dc13d5e597a8db67267468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.185/fleet-linux-arm64"
      sha256 "584c73d13b567bf6973edd4323dd02370cd610ae460766bb2be63e313b752aff"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.185/fleet-linux-amd64"
      sha256 "c3bcc5aae31ddbff753b3ac89f8d5b5ed2875c551cf94f6401bd16bbe9faa9f2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
