# Engine Labs Homebrew Tap

Homebrew formulas for [Engine Labs](https://enginelabs.ai) CLIs.

## Install

```sh
brew install engine-labs/cto/cto
```

Or tap and install in two steps:

```sh
brew tap engine-labs/cto
brew install cto
```

## What is `cto`?

`cto` is the CLI for [cto.new](https://cto.new) — an AI engineering agent that runs locally against your repo. Release artifacts live at [Engine-Labs/cto-cli](https://github.com/Engine-Labs/cto-cli).

## Updating

```sh
brew upgrade cto
```

`cto upgrade` (the built-in self-updater) detects Homebrew-managed installs and defers to `brew upgrade cto` to avoid clobbering the brew-managed binary.

## How formula bumps happen

The `cto` release pipeline pushes Formula updates here automatically on every new tag. Release artifacts live at [Engine-Labs/cto-cli](https://github.com/Engine-Labs/cto-cli).

## Help & community

For help, bug reports, or feature requests, join the Discord: <https://discord.gg/cto>.
