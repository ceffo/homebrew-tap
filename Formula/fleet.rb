class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.299"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.299/fleet-darwin-arm64"
      sha256 "13dc839addbfe60d0061d339f7b097149c07bd24fa24891ef27b80c68a44f232"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.299/fleet-darwin-amd64"
      sha256 "b0665f86f4a420f4ac2b95f5948c7ad0b746e23d0cd5d6aef1d39c9b240312b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.299/fleet-linux-arm64"
      sha256 "03b50c8e4de7bd699aec9b7c8491b6a7d18f152c2c1e9b9d2d424a8800ceaa90"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.299/fleet-linux-amd64"
      sha256 "1997330c820968330deb7f9cd055d1225c5d18e7eaf137ff95f4c45e96a406ff"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
