cask "mnemocli" do
  version "0.22.2"

  on_arm do
    sha256 "eb0850795ba9f9da20263d8372e96e0d2fdd33bf563129aa258efd297ea877ff"
    url "https://github.com/MnemoShare/releases/releases/download/v#{version}/MnemoCLI_#{version}_darwin_arm64.zip"
  end
  on_intel do
    sha256 "9f5304c7b627348d94cea79204d4619abe49d376396efaa1cfa837f8f18aebd9"
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
