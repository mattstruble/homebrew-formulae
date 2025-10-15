class GitAi < Formula
  desc "AI-assisted git workflow with cursor-agent integration"
  homepage "https://github.com/mattstruble/git-ai"
  url "https://github.com/mattstruble/git-ai/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "2d5ceb54080888e15a1230bcb9c9a8716f518b3ba09199b398227e2ee96331f6"
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
