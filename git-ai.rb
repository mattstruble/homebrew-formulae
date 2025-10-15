class GitAi < Formula
  desc "AI-assisted git workflow with cursor-agent integration"
  homepage "https://github.com/mattstruble/git-ai"
  url "https://github.com/mattstruble/git-ai/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "fccd96b942b745a82b5dc5c73cf20453a2f326f7"
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
