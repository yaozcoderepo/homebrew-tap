cask "markora" do
  version "0.1.0"
  sha256 "134ddc074a19c1beb7a24c67e80fb2697de0fde2e0d5ed846d85bf94c491096e"

  url "https://github.com/yaozcoderepo/markora/releases/download/v#{version}/Markora_#{version}_aarch64.dmg"
  name "Markora"
  desc "A fast, native markdown viewer and editor"
  homepage "https://github.com/yaozcoderepo/markora"

  depends_on macos: ">= :monterey"

  app "Markora.app"

  uninstall quit: "com.markora.dev"

  zap trash: [
    "~/Library/Preferences/com.markora.dev.plist",
    "~/Library/WebKit/com.markora.dev",
    "~/Library/Caches/com.markora.dev",
    "~/Library/Saved Application State/com.markora.dev.savedState",
  ]
end
