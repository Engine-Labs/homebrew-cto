class Cto < Formula
  desc "AI-powered engineering agent CLI for cto.new"
  homepage "https://cto.new"
  version "5.70.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.70.0/cto-darwin-arm64"
      sha256 "9455ec5a8534575db1fe4d3cf72853b6397d81ba2230bbfb6779c1554f7e4031"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.70.0/cto-darwin-x64"
      sha256 "9be5519694f6d8d535eeacd7700833377b44fca89279be8dcc347f09de3f88b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.70.0/cto-linux-arm64"
      sha256 "9676ef4f0e45d8d4de17e289e081f3772dc5a17e2534f695643de0342ddc9ca0"
    end
    on_intel do
      url "https://github.com/Engine-Labs/cto-cli/releases/download/v5.70.0/cto-linux-x64"
      sha256 "0813777931a541a575beb2767ff7ad658789678cbc3b4e927000410ef7518758"
    end
  end

  def install
    bin.install Dir["cto-*"].first => "cto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cto --version")
  end
end
