cask "luna" do
  version "1.26.0"
  sha256 "4f1ebfe9a1ed6d242f91dea0df26268b3bc134e582c60ef2d41c8fbf61ed164e"

  url "https://github.com/gk7734/luna/releases/download/v#{version}/Luna-#{version}-aarch64.dmg"
  name "Luna"
  desc "Code editor built on Zed, with Ghostty's terminal inside"
  homepage "https://luna.orrery.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Luna.app"

  zap trash: [
    "~/.config/luna",
    "~/Library/Application Support/Luna",
    "~/Library/Caches/Luna",
    "~/Library/Logs/Luna",
    "~/Library/Preferences/io.github.gk7734.luna.plist",
    "~/Library/Saved Application State/io.github.gk7734.luna.savedState",
  ]
end
