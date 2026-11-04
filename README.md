# Homebrew Tap for Syro

Homebrew tap for [Syro](https://github.com/osdodo/syro).

## Installation

```bash
brew install --cask osdodo/syro/syro
```

The app is ad-hoc signed, not notarized. If macOS blocks it on first launch:

```bash
xattr -dr com.apple.quarantine /Applications/syro.app
```

## Updating the cask

After a `vX.Y.Z` release is published on osdodo/syro:

```bash
./update-cask.sh X.Y.Z
git commit -am "syro X.Y.Z"
```
