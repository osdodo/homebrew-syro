cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "943fc5ed84e7d661ec86f319b399d8b3daa38a727a098a4786b052a001ecb348",
         intel: "6d15c31a1965ed2389ca66284042e86bbfb3bd07a0976362f3d2d1c3081a213b"

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
