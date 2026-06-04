# homebrew-tap

[Homebrew](https://brew.sh) tap for Broken Hands' tools.

## Formulae

| Formula | Description |
| ------- | ----------- |
| [`kiln`](Formula/kiln.rb) | [Kiln](https://github.com/brokenhandsio/kiln) — the Swift documentation-site generator (CLI). |

## Install

```sh
brew install brokenhandsio/tap/kiln
```

Or tap first, then install:

```sh
brew tap brokenhandsio/tap
brew install kiln
```

Upgrade with `brew upgrade kiln`.

## Maintenance

Kiln's prebuilt binary targets **Apple Silicon (arm64) on macOS 13+**. Intel
Macs can install Kiln by building from source — see the
[main repository](https://github.com/brokenhandsio/kiln#install).

`Formula/kiln.rb` is **managed automatically**. Tagging a release in the
[`brokenhandsio/kiln`](https://github.com/brokenhandsio/kiln) repo
(`git tag vX.Y.Z && git push origin vX.Y.Z`) triggers a workflow that builds the
arm64 macOS binary, attaches it to the GitHub Release, and force-updates the
formula here. Manual edits to the formula will be overwritten on the next
release.
