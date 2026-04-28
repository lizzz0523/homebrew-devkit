class Gitshot < Formula
  desc "Render git diff and status as PNG images"
  homepage "https://github.com/lizzz0523/gitshot"
  url "https://github.com/lizzz0523/gitshot/releases/download/v0.2.0/gitshot-aarch64-apple-darwin.zip"
  sha256 "d6276571d4659e727c2ee4cdb6f5660f83221b8a00359a4dd14ab4e5f4c03f83"
  version "0.2.0"

  depends_on :macos

  on_intel do
    url "https://github.com/lizzz0523/gitshot/releases/download/v0.2.0/gitshot-x86_64-apple-darwin.zip"
    sha256 "11b8d4da2f83f00c98c4d5cf08d59894c1b7f0e1163632370c4c4f1b476658ee"
  end

  def install
    bin.install "gitshot"
  end

  test do
    assert_match "gitshot", shell_output("\#{bin}/gitshot --help")
  end
end
