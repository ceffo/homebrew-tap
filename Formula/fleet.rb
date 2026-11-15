class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.217"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.217/fleet-darwin-arm64"
      sha256 "69fd312f46a6324049af36e785c8e4eb316d80b5cd19decc267af48750e2aed6"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.217/fleet-darwin-amd64"
      sha256 "145e6bc470a25fb3970f98928282ef293bc952e66e7cac231ea8f578b144b086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.217/fleet-linux-arm64"
      sha256 "077e46aef7425d9e74483e272d302c6e39947c76f9e3202c4ba163a198e95c83"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.217/fleet-linux-amd64"
      sha256 "cb4181835d542dfeaedc633460c3d53bfc0a56fe92b6d8881cd2195bd4210bed"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
