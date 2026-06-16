cask "afk" do
  version "1.0.0"
  sha256 "8ac08e27a9ab779655a995839735941b46efed8324cb7885ceada73b57227955"

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
