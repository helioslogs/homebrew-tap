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
      sha256 "04d77e5210d781f618fd2beebd8be471737f1a03b7cf29169543229b2032e51d"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b5b29953f109c466ee974d87712f8077fcb382d4aa1c50aaf110e8f656677171"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5935a9d84e28833718acb83463e39f5c2180a7761a9592933908f4b4765b760b"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "913fad1abc739d7de152c9761527f364e970eedf16b97119a8093736c3192bc8"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
