cask "discord" do
  version "0.0.284"
  sha256 "1320576af5c7c00b59b973e5ec7ed20322ce91f6b18896a282a9a7665bfaf0e0"
  
  url "https://dl-canary.discordapp.net/apps/osx/#{version}/DiscordCanary.dmg",
      verified: "dl.discordapp.net/"
  name "Discord Canary"
  desc "Voice and text chat software"
  homepage "https://canary.discord.com/"

  livecheck do
    url "https://discordapp.com/api/download/canary?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord Canary.app"

  zap trash: [
    "~/Library/Application Support/discord",
    "~/Library/Caches/com.hnc.Discord",
    "~/Library/Caches/com.hnc.Discord.ShipIt",
    "~/Library/Cookies/com.hnc.Discord.binarycookies",
    "~/Library/Preferences/com.hnc.Discord.helper.plist",
    "~/Library/Preferences/com.hnc.Discord.plist",
    "~/Library/Saved Application State/com.hnc.Discord.savedState",
  ]
end
