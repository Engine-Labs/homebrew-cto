class Cto < Formula
  desc "AI-powered engineering agent CLI for cto.new"
  homepage "https://cto.new"
  version "5.71.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.71.0/cto-darwin-arm64"
      sha256 "327976eafa4a74cc84d53ed1b2ca2048703be5aed7e14e3e12efeffa80a951d9"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.71.0/cto-darwin-x64"
      sha256 "3b82ca890277c7731443d2110bc0992aba39e7559f011ff4d543b3184153f77c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.71.0/cto-linux-arm64"
      sha256 "8feeeb3574c04009a9eef1f6460a46e3dde59a5fa326ed3868cab1cb092f3905"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.71.0/cto-linux-x64"
      sha256 "4e8210b18cfd2764a41147fd1e4e92c58ca2839b1d0a0e6586f39f303fe0387f"
    end
  end

  def install
    bin.install Dir["cto-*"].first => "cto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cto --version")
  end
end
