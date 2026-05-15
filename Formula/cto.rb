class Cto < Formula
  desc "AI-powered engineering agent CLI for cto.new"
  homepage "https://cto.new"
  version "5.73.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.73.0/cto-darwin-arm64"
      sha256 "90253a1117b2b61b41635b7ad4b09165896875338941b2ad23290405ee373cd9"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.73.0/cto-darwin-x64"
      sha256 "d0bf15c3af6dcbb30a0853929ce58a6eb55ec87e6572077e3a64b091a0ce63a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.73.0/cto-linux-arm64"
      sha256 "04b55d1782f3d9c2abb915140471d9ec341b722817e8fdcfc72bc18f4cbed480"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.73.0/cto-linux-x64"
      sha256 "2d8982c12bc6f2084ec233299d9a72b365ea7b16ec2491c1c83e8962f4585c57"
    end
  end

  def install
    bin.install Dir["cto-*"].first => "cto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cto --version")
  end
end
