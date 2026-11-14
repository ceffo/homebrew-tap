class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.190"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.190/fleet-darwin-arm64"
      sha256 "567565387e63ab748b9d604494085b0136480bdec3b44b0102e07f579b836d75"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.190/fleet-darwin-amd64"
      sha256 "6e3135c9055d57bb992b4616756a430373637314b6bb30a53907d11e78cc8b18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.190/fleet-linux-arm64"
      sha256 "e450919dfe959dd975ce6db53d28eb147fe73ab50beedd405cd9fea9d7e88bff"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.190/fleet-linux-amd64"
      sha256 "08ba378332cf0927b0a15d870272e14a3a7f4d41e79b574921608ef7ac893925"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
