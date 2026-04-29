class Gitshot < Formula
  desc "Render git diff and status as PNG images"
  homepage "https://github.com/lizzz0523/gitshot"
  url "https://github.com/lizzz0523/gitshot/releases/download/v0.3.1/gitshot-aarch64-apple-darwin.zip"
  sha256 "2ca5e6f24722083e524b16b0f1a3d2bb5b72bf5e830cfd2f49eb47aa9b42e504"
  version "0.3.1"

  depends_on :macos

  on_intel do
    url "https://github.com/lizzz0523/gitshot/releases/download/v0.3.1/gitshot-x86_64-apple-darwin.zip"
    sha256 "9c7017a72f14e7ce57618982d0e4c25f9dd2d13a9c93e6ecde725567dc331840"
  end

  def install
    bin.install "gitshot"
  end

  test do
    assert_match "gitshot", shell_output("\#{bin}/gitshot --help")
  end
end
