cask "tappi" do
  version "1.0.0"
  sha256 "52168ead161f7a16807d7b5aefe7796bf2166d39507264b15ee26e2cd69770d5"

  url "https://github.com/leonatwork/Tappi/releases/download/v#{version}/Tappi-v#{version}.zip",
      verified: "github.com/leonatwork/Tappi/"
  name "Tappi"
  desc "Windows-style Alt-Tab window switcher"
  homepage "https://github.com/leonatwork/Tappi"

  depends_on macos: :sonoma

  app "Tappi.app"

  # Builds are ad-hoc signed rather than notarised, so Gatekeeper would quarantine
  # them. Install with --no-quarantine (see caveats).
  caveats do
    <<~EOS
      Tappi is not notarised. If it refuses to open, install it with:
        brew install --cask --no-quarantine leonatwork/tap/tappi

      On first launch Tappi asks for Accessibility (required) and Screen Recording
      (optional, for the window previews) in System Settings.

      Note that macOS ties granted permissions to the code signature, so they have to
      be granted again after each update. Building from source avoids this — see the
      project README.
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Tappi",
  ]
end
