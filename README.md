# Homebrew Tap for Syro

Homebrew tap for [Syro](https://github.com/osdodo/syro).

## Installation

```bash
brew install --cask osdodo/syro/syro
```

The app is ad-hoc signed, not notarized. The cask removes the quarantine
attribute after install so Gatekeeper does not report it as damaged. If you
installed the app another way (e.g. the DMG) and macOS blocks it:

```bash
xattr -dr com.apple.quarantine /Applications/syro.app
```

## Updating the cask

After a `vX.Y.Z` release is published on osdodo/syro:

```bash
./update-cask.sh X.Y.Z
git commit -am "syro X.Y.Z"
```
