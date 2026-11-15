class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.218"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.218/fleet-darwin-arm64"
      sha256 "dd080f1634e42d2e27abfa4dca8af39fc925cd0081e5da785b569bfdb362ffea"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.218/fleet-darwin-amd64"
      sha256 "00a8da024fcf33bc20a5d953e0a8930ac5696a4bea6773231cba9d90c5b9eada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.218/fleet-linux-arm64"
      sha256 "28a7991ac2a7ee9b379e6e73f9b5dea67e24b01b25bebcc3404e6ab015af7641"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.218/fleet-linux-amd64"
      sha256 "c7b5db9725d60740224ee284803326483cb18d19036f5496dd1f0f80531497cd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
