class Fleet < Formula
  desc "Agent fleet tooling (prebuilt binary)"
  homepage "https://github.com/ceffo/agents-dev-fleet"
  version "0.2.100"

  on_macos do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.100/fleet-darwin-arm64"
      sha256 "c54cea925bbf82f979c357f47e4c38588e5633284c1070e1e4ae15fc8a810440"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.100/fleet-darwin-amd64"
      sha256 "7f35bb8c915c44f595f557f54759de64cc9dbf8cb61da635ec03065e2273832f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.100/fleet-linux-arm64"
      sha256 "bfd80134744b7689e4947304a8d4dec185f32bdf79789030650bbdfb146c8873"
    end
    on_intel do
      url "https://github.com/ceffo/homebrew-tap/releases/download/fleet-v0.2.100/fleet-linux-amd64"
      sha256 "2476f15fb6874e49f3a8e5f7fcaf3ff4f247513aaa904247dec3ff697ac317cd"
    end
  end

  def install
    bin.install Dir["fleet-*"].first => "fleet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleet --version")
  end
end
