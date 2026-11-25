cask "mnemocli" do
  version "0.23.6"

  on_arm do
    sha256 "ee9006265e0f8bc51d3ca696290300e49a40b52652e56207ed0179fa2ae64084"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_arm64.zip"
  end
  on_intel do
    sha256 "21bccff9e066f426e205f774fc7fa2f4903b568c1091a972d678c5538a610e31"
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
