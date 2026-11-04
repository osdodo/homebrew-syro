cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "6daca630d9d799418052240edbb98e4508ff229ca0c7b3fff032fe865f28c2d2",
         intel: "ca46a2cd6c524e277dd68684dbf3e42d518e9bb422348b1c8c77c096df135eea"

  url "https://github.com/osdodo/syro/releases/download/v#{version}/syro-#{version}-macos-#{arch}.dmg"
  name "Syro"
  desc "Native desktop workspace for running CLI coding agents across git worktrees"
  homepage "https://github.com/osdodo/syro"

  depends_on macos: ">= :sequoia"

  app "syro.app"
end
