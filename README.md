# MnemoShare Homebrew Tap

Official Homebrew tap for MnemoShare CLI - HIPAA-compliant secure file transfer tool.

## Installation

```bash
brew tap MnemoShare/tap
brew install mnemocli
```

Or in one command:

```bash
brew install MnemoShare/tap/mnemocli
```

## Usage

```bash
# Configure API URL
mnemocli config set api_url https://your-server.com/api/v1

# Login
mnemocli login your-email@example.com

# Upload files
mnemocli upload file.pdf
```

## More Information

- **Main Repository:** https://github.com/MnemoShare/mnemoshare
- **Documentation:** https://github.com/MnemoShare/mnemoshare#readme
- **Issues:** https://github.com/MnemoShare/mnemoshare/issues

## Formula Updates

The formula in this tap is automatically updated by [GoReleaser](https://goreleaser.com/) when new releases are published.
