class GitAi < Formula
  desc "AI-assisted git workflow with cursor-agent integration"
  homepage "https://github.com/mattstruble/git-ai"
  license "MIT"
  head "https://github.com/mattstruble/git-ai.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/mattstruble/git-ai/releases/download/v0.6.0/git-ai-macos-x86_64"
      sha256 "2a4583818699306046554b375a86085344ce493554d4a8c35b0bee9ff7cd1807"
    end
    on_arm do
      url "https://github.com/mattstruble/git-ai/releases/download/v0.6.0/git-ai-macos-aarch64"
      sha256 "f51254c30fe838ba9c31afd67cf3af6b5c140836639851c90c55f562599fe81d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mattstruble/git-ai/releases/download/v0.6.0/git-ai-linux-x86_64"
      sha256 "c95d17db48ac004bfbdfc2053fc59c33511b0ae99fcfae31657b3a2e0d85f43b"
    end
    on_arm do
      url "https://github.com/mattstruble/git-ai/releases/download/v0.6.0/git-ai-linux-aarch64"
      sha256 "0673c758b32180bbd65d2b9fb6e82cde7697990a8ff40ce95254e8e7df38d927"
    end
  end

  def install
    os = OS.mac? ? "macos" : "linux"
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"
    binary_name = "git-ai-#{os}-#{arch}"
    
    bin.install binary_name => "git-ai"
  end

  test do
    # Test that the binary was installed and can show help
    assert_match "AI-assisted git workflow", shell_output("#{bin}/git-ai --help")
  end
end
