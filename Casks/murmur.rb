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
  desc "本地语音输入工具（按住说话，识别并润色后粘贴）"
  homepage "https://github.com/lizzz0523/murmur"
  app "Murmur.app"

  caveats <<~EOS
    Murmur 为 ad-hoc 签名版本。若首次打开被系统拦截，执行：
      xattr -dr com.apple.quarantine /Applications/Murmur.app
    或在「系统设置 → 隐私与安全性」中点击「仍要打开」。
    使用前还需在「隐私与安全性」中授予：麦克风、输入监控、辅助功能。
  EOS
end
