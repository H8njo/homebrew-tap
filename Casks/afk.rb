cask "afk" do
  version "1.0.0"
  sha256 "b3146d65b1ac1d3c72d87cc78fa4c4d1ea99c94b5c35f246fee7d3308343f287"

  url "https://github.com/H8njo/afk/releases/download/v#{version}/AFK.zip"
  name "AFK"
  desc "Auto-switch apps when Claude Code is working"
  homepage "https://github.com/H8njo/afk"

  depends_on macos: ">= :ventura"

  app "AFK.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AFK.app"]
  end

  zap trash: [
    "~/.afk",
    "~/Library/Preferences/com.afk.app.plist",
  ]
end
