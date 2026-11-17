class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.297"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.297/fleet-darwin-arm64"
      sha256 "9e857a9334dacf7f1341b35b0191759bd9ec4d6e0d17e01272b8384e896660bd"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.297/fleet-darwin-amd64"
      sha256 "dadadddfb15acf6d8bc69447cecaed3192df2386193515fa48141f3725c8896a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.297/fleet-linux-arm64"
      sha256 "946347a70b00143bec533b46ec52e1cf2a2ad67abb77a911d3b8a4249762456c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.297/fleet-linux-amd64"
      sha256 "37d5f9d53a4b3eef7e3a75382d79ce3efad72c7ab455c59d9b371396263a6fb2"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
