cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "08568292128063cfec2bd71fd14454590d41a6153cd68342c8e7159347b3be63",
         intel: "f6290912f4d83eedaf4bb4727eeb311dfd6ce4285570cf1e982842b8d7c80228"

  url "https://github.com/osdodo/syro/releases/download/v#{version}/syro-#{version}-macos-#{arch}.dmg"
  name "Syro"
  desc "Native desktop workspace for running CLI coding agents across git worktrees"
  homepage "https://github.com/osdodo/syro"

  depends_on macos: :sequoia

  app "syro.app"

  # Ad-hoc signed, not notarized: without this Gatekeeper reports the app as damaged.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/syro.app"],
        writable_paths: ["syro.app"],
        writable_base:  :appdir
  end
end
