class GitAi < Formula
  desc "AI-assisted git workflow with cursor-agent integration"
  homepage "https://github.com/mattstruble/git-ai"
  url "https://github.com/mattstruble/git-ai/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "64919c9744a270d23982fff911593d2735f59139"
  license "MIT"
  head "https://github.com/mattstruble/git-ai.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that the binary was installed and can show help
    assert_match "AI-assisted git workflow", shell_output("#{bin}/git-ai --help")
  end
end
