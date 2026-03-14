cask "mac-lid-lullaby" do
  version "1.0"
  sha256 "2c2ed51b2744edfb070f7f74170d763883d2d06a96af3b6657529485e104fa06"

  url "https://github.com/pg8wood/macbook-lid/releases/download/v#{version}/Mac%20Lid%20Lullaby%20#{version}.dmg",
      verified: "github.com/pg8wood/macbook-lid/"
  name "Mac Lid Lullaby"
  desc "Menu bar app that plays a custom sound as your MacBook lid closes"
  homepage "https://github.com/pg8wood/macbook-lid"

  depends_on macos: ">= :ventura"

  app "Mac Lid Lullaby.app"

  zap trash: [
    "~/Library/Application Support/Mac Lid Lullaby",
    "~/Library/Preferences/com.patrickgatewood.mac-lid-lullaby.plist",
  ]
end
