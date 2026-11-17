cask "mnemocli" do
  version "0.23.2"

  on_arm do
    sha256 "d4b000db11e5e33c0d9a7e9a3aa912f2e6ac507869d1194cc425f02a6d00b730"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_arm64.zip"
  end
  on_intel do
    sha256 "dd14d5715281346722a8f29a968a89f27ae26ac3e47b4681e0f8873b70841628"
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
