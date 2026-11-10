cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "a83df3983052aa3f90d1d47ed5b886f0d9b7860e8493f43f3cc7336debe0aede",
         intel: "ad95f50a9d8e01e8f5ae0c46944ab2f91fc22d403a7c4e1f5efa017f3415105d"

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
