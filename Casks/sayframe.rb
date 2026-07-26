cask "sayframe" do
  version "1.0.0"
  sha256 "f97b19f424b8a9a9c991b2b43fd5d7799121372330aa3c143c2a1b09d0bb8c84"

  url "https://dl.sayframe.app/Sayframe-#{version}.dmg"
  name "Sayframe"
  desc "On-device voice to text for Mac — private by default"
  homepage "https://sayframe.app/"

  livecheck do
    url "https://dl.sayframe.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sonoma"

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
