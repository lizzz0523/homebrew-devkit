class Gitshot < Formula
  desc "Render git diff and status as PNG images"
  homepage "https://github.com/lizzz0523/gitshot"
  url "https://github.com/lizzz0523/gitshot/releases/download/v0.3.0/gitshot-aarch64-apple-darwin.zip"
  sha256 "719ac0f69871f09f8eb3fd1062b2a8dc1dae60a592aa2505e3c089646d220489"
  version "0.3.0"

  depends_on :macos

  on_intel do
    url "https://github.com/lizzz0523/gitshot/releases/download/v0.3.0/gitshot-x86_64-apple-darwin.zip"
    sha256 "f2338b37641e6ca52a652d78e982de991ccd28634a6d85318ed2c3628aef6f62"
  end

  def install
    bin.install "gitshot"
  end

  test do
    assert_match "gitshot", shell_output("\#{bin}/gitshot --help")
  end
end
