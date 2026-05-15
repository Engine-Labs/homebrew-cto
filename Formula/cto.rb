class Cto < Formula
  desc "AI-powered engineering agent CLI for cto.new"
  homepage "https://cto.new"
  version "5.74.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.74.0/cto-darwin-arm64"
      sha256 "136845d22274848db775b557d547aa736cb14905852629e56ab9e53c879fe22c"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.74.0/cto-darwin-x64"
      sha256 "824c67ad554845bb83d597063a11940517e8663250986207281de40ac5a0c00f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.74.0/cto-linux-arm64"
      sha256 "ca748140f299e1b23b04c6637f6523dc49429e0a5b06d8a5e040c409bb3ae393"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.74.0/cto-linux-x64"
      sha256 "5de54e8093ee92419e52a681d54e4ecd3d0e5d87b32c293168ba1b9b43a59e36"
    end
  end

  def install
    bin.install Dir["cto-*"].first => "cto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cto --version")
  end
end
