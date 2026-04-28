class Gitshot < Formula
  desc "Render git diff and status as PNG images"
  homepage "https://github.com/lizzz0523/gitshot"
  url "https://github.com/lizzz0523/gitshot/releases/download/v0.1.0/gitshot-aarch64-apple-darwin.zip"
  sha256 "d42849ba5df4cc0b43862679a369e8cebd53da2bf200b670d6da59a9a18098c4"
  version "0.1.0"

  depends_on :macos

  on_intel do
    url "https://github.com/lizzz0523/gitshot/releases/download/v0.1.0/gitshot-x86_64-apple-darwin.zip"
    sha256 "2683340ecc0d1a23de7c869f51c103964d10a1b30c41328bbf499feeea355979"
  end

  def install
    bin.install "gitshot"
  end

  test do
    assert_match "gitshot", shell_output("\#{bin}/gitshot --help")
  end
end
