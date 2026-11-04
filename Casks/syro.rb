cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/osdodo/syro/releases/download/v#{version}/syro-#{version}-macos-#{arch}.dmg"
  name "Syro"
  desc "Native desktop workspace for running CLI coding agents across git worktrees"
  homepage "https://github.com/osdodo/syro"

  depends_on macos: ">= :sequoia"

  app "syro.app"
end
