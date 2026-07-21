cask "lingshu" do
  version "0.1.0-12"
  sha256 "c2735cd762926fe9b0b55bdde5bfebacfb06b4d95c6f5338285e7c21e3107c2d"

  url "https://github.com/RoyZhao1991/LingShu/releases/download/v0.1.0-alpha.9/LingShu-#{version}-macOS-universal.dmg"
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
