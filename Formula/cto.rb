class Cto < Formula
  desc "AI-powered engineering agent CLI for cto.new"
  homepage "https://cto.new"
  version "5.72.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.72.0/cto-darwin-arm64"
      sha256 "4d4318f8890cef7793abd9c5d25be0a7850d99d4388cded4718392753606ed8b"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.72.0/cto-darwin-x64"
      sha256 "2d8ff3bc3d84dcc53a1c7c042bb03934c19dec372aaf6d0fcb6a61b79f06dc88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.72.0/cto-linux-arm64"
      sha256 "2f8947df8fe3ad319b8b5af3f896b6f81915124fce2cf0ffca529eb8c6d1b705"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.72.0/cto-linux-x64"
      sha256 "797198eedc62424371897b75ea09d4589dce68beca62a6f17497ce135d4db61e"
    end
  end

  def install
    bin.install Dir["cto-*"].first => "cto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cto --version")
  end
end
