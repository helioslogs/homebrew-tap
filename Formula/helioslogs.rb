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
      sha256 "c673cba93c40086fe30b363dbfba8abe5d3caae133c2c20fd40ee3604b9e5c5f"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-darwin_amd64.tar.gz"
      sha256 "8daeab549baf73e98009f5024ab542d068948cac141162932fe81cd6c59e1209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-linux_arm64.tar.gz"
      sha256 "98c4c399b674781568e996d20b2f7aa199a9a7880c40d44031a373e3ae0e0787"
    end
    on_intel do
      url "https://github.com/helioslogs/helioslogs/releases/download/v0.2.3/helioslogs-0.2.3-linux_amd64.tar.gz"
      sha256 "e3b7b5127e13872fc2ddc6ed054c7636501d3fced3254f3664a9ecb0bf58b491"
    end
  end

  def install
    bin.install "helioslogs"
  end

  test do
    assert_match "helioslogs #{version}", shell_output("#{bin}/helioslogs --version")
  end
end
