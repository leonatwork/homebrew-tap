cask "snapboard" do
  version "1.0.0"
  sha256 "3ce9853b54328d75d7b1c338bfe7be157248402f43323d89860434c2a9a82ff4"

  url "https://github.com/leonatwork/snapboard/releases/download/v#{version}/Snapboard-macOS.zip",
      verified: "github.com/leonatwork/snapboard/"
  name "Snapboard"
  desc "Capture screen areas straight to the clipboard"
  homepage "https://github.com/leonatwork/snapboard"

  depends_on macos: ">= :sonoma"

  app "Snapboard.app"

  caveats do
    <<~EOS
      Snapboard is not notarised. If it refuses to open, install it with:
        brew install --cask --no-quarantine leonatwork/tap/snapboard

      On first launch Snapboard asks for Screen Recording in System Settings —
      without it, captures come out blank.
    EOS
  end

  zap trash: [
    "~/Library/Preferences/de.leonatwork.snapboard.plist",
  ]
end
