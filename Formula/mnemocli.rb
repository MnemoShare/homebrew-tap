# typed: false
# frozen_string_literal: true

# Homebrew formula for MnemoShare CLI
class Mnemocli < Formula
  desc "MnemoShare CLI - HIPAA-compliant secure file transfer"
  homepage "https://mnemoshare.com"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MnemoShare/releases/releases/download/v0.4.3/mnemocli_0.4.3_darwin_amd64.tar.gz"
      sha256 "3c1dae812dfc92bd57f70157df849ede5e821b078576e4afac30eb2f3d87404c"

      def install
        bin.install "mnemocli"
      end
    end
    on_arm do
      url "https://github.com/MnemoShare/releases/releases/download/v0.4.3/mnemocli_0.4.3_darwin_arm64.tar.gz"
      sha256 "36bc4023773c6b783c934d811177a06010d7561881cf1ce7f5517cbd60cf7113"

      def install
        bin.install "mnemocli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MnemoShare/releases/releases/download/v0.4.3/mnemocli_0.4.3_linux_amd64.tar.gz"
        sha256 "ee0867713dac5fe9993ab145fc58afe911c12e49f1281e18b5a5d86b61c724bd"

        def install
          bin.install "mnemocli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MnemoShare/releases/releases/download/v0.4.3/mnemocli_0.4.3_linux_arm64.tar.gz"
        sha256 "81c3ad949ee3dac8b6ed1cf98af4e73eeec5f659b7cfc9ee4b5b5cd179c8d018"

        def install
          bin.install "mnemocli"
        end
      end
    end
  end

  test do
    system "#{bin}/mnemocli", "--version"
  end
end
