cask "murmur" do
  # version/sha256 由 murmur 仓库的 release workflow 在打 tag 后自动刷新。
  # 下列值为首次发布前的占位，首次 v* tag 发布后会被真实值覆盖。
  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  on_arm do
    url "https://github.com/lizzz0523/murmur/releases/download/v" + version + "/murmur-aarch64-apple-darwin.zip"
  end
  on_intel do
    url "https://github.com/lizzz0523/murmur/releases/download/v" + version + "/murmur-x86_64-apple-darwin.zip"
  end

  name "Murmur"
  desc "Local on-device voice input for macOS"
  homepage "https://github.com/lizzz0523/murmur"
  app "Murmur.app"

  caveats <<~EOS
    Murmur is ad-hoc signed (not notarized). If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine /Applications/Murmur.app
    or click "Open Anyway" in System Settings -> Privacy & Security.

    You must also grant Microphone, Input Monitoring, and Accessibility
    permissions in System Settings -> Privacy & Security before use.
  EOS
end
