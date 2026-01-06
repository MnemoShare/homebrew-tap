# Homebrew Formula for MnemoShare CLI
#
# Installation:
#   brew tap mnemoshare/tap
#   brew install mnemocli
#
# For Secure Enclave support (hardware mTLS), use the Cask instead:
#   brew install --cask mnemoshare/tap/mnemocli

class Mnemocli < Formula
  desc "MnemoShare CLI - HIPAA-compliant secure file transfer"
  homepage "https://mnemoshare.com"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/MnemoShare/mnemoshare/releases/download/v#{version}/mnemocli_#{version}_darwin_arm64.tar.gz"
      sha256 "6353d7520873a1664a84c7aefb8396c20b94d8110951a6290138f88fc8565081"
    end

    on_intel do
      url "https://github.com/MnemoShare/mnemoshare/releases/download/v#{version}/mnemocli_#{version}_darwin_amd64.tar.gz"
      sha256 "831075002f8e06da06d6653b0af088d2d8430f6396e6fd7ea274f0f7e207bc0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MnemoShare/mnemoshare/releases/download/v#{version}/mnemocli_#{version}_linux_arm64.tar.gz"
      sha256 "eef6b8c92e424a8694f4acb4eb23c0308d2f9222ccf49cbb610273e572939d23"
    end

    on_intel do
      url "https://github.com/MnemoShare/mnemoshare/releases/download/v#{version}/mnemocli_#{version}_linux_amd64.tar.gz"
      sha256 "2ff271fdf9edbf6019fa627365a0d6acecacf9cec29bfe12f136ff46f6acf0f7"
    end
  end

  def install
    bin.install "mnemocli"
  end

  test do
    system bin/"mnemocli", "--version"
  end

  def caveats
    <<~EOS
      MnemoShare CLI has been installed.

      Quick start:
        mnemocli login                    # Login to your account
        mnemocli upload --file doc.pdf    # Upload a file
        mnemocli folder sync              # Sync shared folders

      For Enterprise+ hardware key support (Secure Enclave), reinstall with:
        brew uninstall mnemocli
        brew install --cask mnemoshare/tap/mnemocli

      Documentation: https://mnemoshare.com/docs?section=cli
    EOS
  end
end
