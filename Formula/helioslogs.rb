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
      sha256 "44f059977e92ddce986397918dd400f0d92b2368132bbe4034ca29b017e8cf94"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cad7465916e271bd5cf6308462ea7e3337aa87e986d3dc5bcf447c7f3a0edb66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99007832466c2c2fe8bbd8f79d69cc346c7c15e07e20e864275f773b98580606"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.0/helioslogs-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55e396726697eb981c5a452eb7292b70257795b28b41f7bbbde39694cb33b142"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
