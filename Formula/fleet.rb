class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.332"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.332/fleet-darwin-arm64"
      sha256 "df7457decaa2e70313ef0b657c060f4f642a19f6a536be1fb7af9e8bd49273fe"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.332/fleet-darwin-amd64"
      sha256 "e075a7ef60011ea12088e35779ae9f9b64fb67c1b65ccde41c8a0b9670618f95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.332/fleet-linux-arm64"
      sha256 "0a399a647b14bf24bf6a0025b5dbda42c2366f29acdcaf1994c0ca0ec723452c"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.332/fleet-linux-amd64"
      sha256 "c0b75abab0314136dc3b4eced75c84bfd4117feefeb98de03ea4e2f807ce5ad6"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
