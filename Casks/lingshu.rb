cask "lingshu" do
  version "0.1.0-9"
  sha256 "1e3ad6b3311e69c6e83e2da69b3b049eeb400ace81e0d8b82dc99812fd2d7d81"

  url "https://github.com/RoyZhao1991/LingShu/releases/download/v0.1.0-alpha.6/LingShu-#{version}-macOS-universal.dmg"
  name "LingShu"
  name "灵枢"
  desc "AI agent that turns goals into verified deliverables"
  homepage "https://github.com/RoyZhao1991/LingShu"

  livecheck do
    skip "Alpha assets include a separate app build number"
  end

  depends_on macos: ">= :sonoma"

  app "灵枢.app"
  binary "#{appdir}/灵枢.app/Contents/MacOS/lingshu", target: "lingshu"

  zap trash: [
    "~/Library/Application Support/LingShu",
    "~/Library/Caches/com.zhaoroy.LingShu",
    "~/Library/Preferences/com.zhaoroy.LingShu.plist",
    "~/Library/Saved Application State/com.zhaoroy.LingShu.savedState",
  ]
end
