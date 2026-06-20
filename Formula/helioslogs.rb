# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "0.2.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-darwin_arm64.tar.gz"
      sha256 "ef3846b49efc7400ca18967918b39f47bdf53c960aff07d14605bb411f6221e8"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-darwin_amd64.tar.gz"
      sha256 "14bc05cf1107657b6ffee64945153ab669eb2089cc83b87eb0b733a31c08dab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-linux_arm64.tar.gz"
      sha256 "6b3f973e1971c01dd70afe67a14bf7f5bb5e443113639dccf3bb8c4a8603880c"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-linux_amd64.tar.gz"
      sha256 "b91624e917eb99d361fc3ec61ab952d9aa057799b138536047920f70cad128b4"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
