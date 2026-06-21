# Reference Homebrew formula. release.sh regenerates this with the real version +
# per-platform SHA256s and pushes it to the `helioslogs/homebrew-tap` repo.
# Install (once the tap exists): brew install helioslogs/tap/helioslogs
class Helioslogs < Formula
  desc "AI-native log search engine with a built-in agent and MCP server"
  homepage "https://github.com/helioslogs/helioslogs"
  version "0.2.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-darwin_arm64.tar.gz"
      sha256 "6d0b5f5263da06cdbc13c38e8ff98c9c99cc50b8a440fc4aa8b8b769546bd94d"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-darwin_amd64.tar.gz"
      sha256 "82ffbef68c597ab68790c031c225a14cee30209beedd370877f19b6b2184cf85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-linux_arm64.tar.gz"
      sha256 "7eade1a6c0c02030d6ec66690a20dcfdd564c21ad8cc2219cfc123f204695c55"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-linux_amd64.tar.gz"
      sha256 "0d9e6ab384e8c351dd00e96a9f5a1b0d87296ced8229b1397e6063b20d5d10b2"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
