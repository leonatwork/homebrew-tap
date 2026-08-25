cask "klemmi" do
  version "1.0.0"
  sha256 "8cacb62aa95b40ea7825dd436d77374e09d56b7b6e3e36f9e3f47f6c9c4fa900"

  url "https://github.com/leonatwork/Klemmi/releases/download/v#{version}/Klemmi-v#{version}.zip",
      verified: "github.com/leonatwork/Klemmi/"
  name "Klemmi"
  desc "Clipboard history with source-app attribution"
  homepage "https://github.com/leonatwork/Klemmi"

  depends_on macos: ">= :ventura"

  app "Klemmi.app"

  caveats do
    <<~EOS
      Klemmi is not notarised. If it refuses to open, install it with:
        brew install --cask --no-quarantine leonatwork/tap/klemmi

      Klemmi needs no special permissions. Its history is stored unencrypted in
      ~/Library/Application Support/Klemmi — content that password managers mark as
      concealed is skipped by default.
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Klemmi",
  ]
end
