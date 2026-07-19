cask "lingshu" do
  version "0.1.0-11"
  sha256 "815a1e8471e1dfc2cd2e773f388567601fc36fb45d30b83eec4c4743644822d4"

  url "https://github.com/RoyZhao1991/LingShu/releases/download/v0.1.0-alpha.8/LingShu-#{version}-macOS-universal.dmg"
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
