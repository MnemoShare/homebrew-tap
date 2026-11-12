cask "mnemocli" do
  version "0.22.5"

  on_arm do
    sha256 "26644f98d3b184d4ef5f5b70b9345900cb8efd9ba074f44891011ce1c8d462b1"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_arm64.zip"
  end
  on_intel do
    sha256 "a63da56743d3af6bb40ed06bfcc773a80fa692eb091d8b876164a2e0e3134156"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_amd64.zip"
  end

  name "MnemoShare CLI"
  desc "MnemoShare CLI - HIPAA-compliant secure file transfer (Secure Enclave support)"
  homepage "https://mnemoshare.com"

  conflicts_with formula: "mnemocli"
  depends_on macos: ">= :ventura"

  app "MnemoCLI.app"
  binary "#{appdir}/MnemoCLI.app/Contents/MacOS/mnemocli"

  zap trash: "~/.mnemocli.yaml"
end
