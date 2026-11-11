class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.1/fleet-darwin-arm64"
      sha256 "d61aa2fe8fcee7c6ce1f8760cac7bd1b76e184934308603d966816a43b80ccc2"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.1/fleet-darwin-amd64"
      sha256 "88100c35e3925d309396780b643610b4742fefe15478a6228e24ddac99fb842a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.1/fleet-linux-arm64"
      sha256 "b27ce6ff0249825f3c790e076fe897ca8a6223047bd09ad57bf999c974ec9977"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.1/fleet-linux-amd64"
      sha256 "05c5ceaf8571864eb1e5cde8676cce1cd41f5b15338323e8c1900bc5608d896d"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
