cask "luna" do
  version "1.26.0"
  sha256 "c11d5b3b64c558dfdd05198d97724ac60ca0ede613b3f1a53158e46e4408d1e3"

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
  depends_on :macos

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
