class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.153"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.153/fleet-darwin-arm64"
      sha256 "de311e6be034db068800a366ccfdecd8612badbf776d0e0eae29b7beeb3d434b"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.153/fleet-darwin-amd64"
      sha256 "ec537d1927c55847e1e0204809c82c098e6cf56a6e17c67569d702e1abb5ec11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.153/fleet-linux-arm64"
      sha256 "f1ab64944e077aea6f1379feb5b4e6833897c41498fcca4501a43ad9a7d23432"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.153/fleet-linux-amd64"
      sha256 "ebbf717248e573c9d036540a32023a3f20e7aadceb74e1836c4354b545a3b2be"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
