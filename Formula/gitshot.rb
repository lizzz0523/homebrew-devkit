class Gitshot < Formula
  desc "Render git diff and status as PNG images"
  homepage "https://github.com/lizzz0523/gitshot"
  url "https://github.com/lizzz0523/gitshot/releases/download/v0.1.0/gitshot-aarch64-apple-darwin.zip"
  sha256 "302c05e3d374664b5af635fb7c57333c6c39e7cbc9578856febdab94aa7a7e0a"
  version "0.1.0"

  depends_on :macos

  on_intel do
    url "https://github.com/lizzz0523/gitshot/releases/download/v0.1.0/gitshot-x86_64-apple-darwin.zip"
    sha256 "e7e0d828fb4627e4a63647c8715d8b0c8bbc730f027deb9275e51ec23950ff33"
  end

  def install
    bin.install "gitshot"
  end

  test do
    assert_match "gitshot", shell_output("#{bin}/gitshot --help")
  end
end
