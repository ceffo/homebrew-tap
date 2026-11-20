class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.319"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.319/fleet-darwin-arm64"
      sha256 "a8110ca7829b1b6d9444221378be85e746b63d53785e4032104602200ffddc18"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.319/fleet-darwin-amd64"
      sha256 "e60c32bed583b50d132cd908b5fffabad28abd4baab13bb750b0f62e1e0641d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.319/fleet-linux-arm64"
      sha256 "de5c1cb9d53007e58978c840209a77077ddf4be56050f9ae3dc861109a90eff8"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.319/fleet-linux-amd64"
      sha256 "307a427d704c9dc4f8c3671e1efbe3be9cb081fd6937d3ebd83131fcd538cfdd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
