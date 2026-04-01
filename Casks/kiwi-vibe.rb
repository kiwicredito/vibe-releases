cask "kiwi-vibe" do
  version "0.3.3"

  on_arm do
    url "https://github.com/kiwicredito/vibe-releases/releases/download/vibe-v#{version}/KiwiVibe_#{version}_aarch64.dmg"
    sha256 "8dc5fd5bf0a851baccd377d279a8830d68c9a6bcb83ef493b820aff9688bec8c"
  end

  on_intel do
    url "https://github.com/kiwicredito/vibe-releases/releases/download/vibe-v#{version}/KiwiVibe_#{version}_x64.dmg"
    sha256 "5a82a672fdaceebb6e5144ffd6408bfb6038c286d059964ae0303e393b404afa"
  end

  name "Kiwi Vibe"
  desc "Vibe coding desktop app for Kiwi development"
  homepage "https://github.com/kiwicredito/vibe-releases"

  app "KiwiVibe.app"

  zap trash: [
    "~/Library/Application Support/com.kiwi.vibe",
    "~/Library/Caches/com.kiwi.vibe",
    "~/Library/Preferences/com.kiwi.vibe.plist",
  ]
end
