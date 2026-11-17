cask "mnemocli" do
  version "0.23.1"

  on_arm do
    sha256 "7d7e8971a67643a953b35d74164726adac408dddb3c68bef55c20f0cec345482"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_arm64.zip"
  end
  on_intel do
    sha256 "039586d94f605c5b98d3a978b221a50e8e50af1c94e986a738a2e452d63cd14f"
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
