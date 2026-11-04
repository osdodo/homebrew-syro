cask "syro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "d63e402cf42eaa9ba756e0a6522675388332252d0815d46bdca27f9ab6d90f63",
         intel: "5cfc5b55dc64ba2b08b0939b1be462028f233ae4185e4fc8bc21e3640ef9e8f7"

  url "https://github.com/osdodo/syro/releases/download/v#{version}/syro-#{version}-macos-#{arch}.dmg"
  name "Syro"
  desc "Native desktop workspace for running CLI coding agents across git worktrees"
  homepage "https://github.com/osdodo/syro"

  depends_on macos: ">= :sequoia"

  app "syro.app"
end
