cask "kiwi-vibe" do
  version "0.3.2"

  on_arm do
    url "https://github.com/kiwicredito/vibe-releases/releases/download/vibe-v#{version}/KiwiVibe_#{version}_aarch64.dmg"
    sha256 "5db6a6259af25c95d3b84d47bec740ae99ff94c1decfc339289861865507d489"
  end

  on_intel do
    url "https://github.com/kiwicredito/vibe-releases/releases/download/vibe-v#{version}/KiwiVibe_#{version}_x64.dmg"
    sha256 "a16db922f300bdae7ec6908baabfc73cd010500d19cad3b79dedfa836ab39a83"
  end

  name "Kiwi Vibe"
  desc "Vibe coding desktop app for Kiwi development"
  homepage "https://github.com/kiwicredito/vibe-releases"

  app "KiwiVibe.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/KiwiVibe.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/com.kiwi.vibe",
    "~/Library/Caches/com.kiwi.vibe",
    "~/Library/Preferences/com.kiwi.vibe.plist",
  ]
end
