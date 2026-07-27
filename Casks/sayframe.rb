cask "sayframe" do
  version "1.0.1"
  sha256 "85684eeabc5c5f74552c9fbcc74f103d0b63555d5011794850a5d35055222019"

  url "https://dl.sayframe.app/Sayframe-#{version}.dmg"
  name "Sayframe"
  desc "On-device voice to text for Mac — private by default"
  homepage "https://sayframe.app/"

  livecheck do
    url "https://dl.sayframe.app/appcast.xml"
    strategy :sparkle
  end

  # Cask symbol form means "this version or later" (macOS 14+).
  depends_on macos: :sonoma

  app "Sayframe.app"

  # Sayframe updates itself via Sparkle, so Homebrew should not reinstall on upgrade.
  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.sayframe.direct",
    "~/Library/Caches/com.sayframe.direct",
    "~/Library/HTTPStorages/com.sayframe.direct",
    "~/Library/Preferences/com.sayframe.direct.plist",
    "~/Library/Saved Application State/com.sayframe.direct.savedState",
  ]
end
