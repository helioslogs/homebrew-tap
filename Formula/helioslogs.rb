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
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "09d22b6dfe39adce2e59c55dcc0dca2bd168bba1a1e2fe9d1c02907f2f5451d1"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a81a817c0d89a7577fbb413b83a333c5399d5f1e00ca47f07a6508a156e6cccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "735c58ec8aa8dca2a50b96e33aa5ebe50b168eef2adf5a390336ea1d9f512849"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "365b21bacdabbe5264c80d6c842aee530809cff423242acdddaa83a7d75edffd"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
