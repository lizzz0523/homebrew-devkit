cask "murmur" do
  version "0.1.0"
  sha256 arm:   "c471ed16f590021de589f75937851d1d3f1b92b7ed01086cd16cedd9901ff69f",
         intel: "36fa33695eced4a3962f77f738dfd467c66b9ff81943efb2c00e206fdc199445"

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
