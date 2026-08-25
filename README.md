# leonatwork/tap

Homebrew tap for a small set of macOS utilities that bring back Windows productivity
features macOS does not offer.

```bash
brew tap leonatwork/tap
```

## Casks

| Cask | What it does | Replaces on Windows |
| --- | --- | --- |
| [`tappi`](https://github.com/leonatwork/Tappi) | Switches **windows**, not apps, in MRU order — panel visible in ~1 ms | Alt-Tab |
| [`klemmi`](https://github.com/leonatwork/Klemmi) | Searchable clipboard history with source-app attribution | `Win`+`V` |
| [`snapboard`](https://github.com/leonatwork/snapboard) | Capture a screen area straight to the clipboard, with annotation and redaction | Snipping Tool |

## Installation

```bash
brew install --cask --no-quarantine leonatwork/tap/tappi
brew install --cask --no-quarantine leonatwork/tap/klemmi
brew install --cask --no-quarantine leonatwork/tap/snapboard
```

### Why `--no-quarantine`

These builds are signed but **not notarised** — notarisation requires a paid Apple
developer account. Without the flag, Gatekeeper quarantines the app and refuses to open it
with a "damaged or cannot be verified" message. The flag skips that, which you should only
do for software you actually trust; every one of these apps builds from source in under a
minute if you would rather verify it yourself.

### A note on permissions

macOS ties granted permissions (Accessibility, Screen Recording) to an app's code
signature. Updating a cask replaces the app with a new build, so those permissions have to
be granted again. Building from source with a stable local signing identity avoids this —
each project's README explains how.

## Updating

```bash
brew update && brew upgrade --cask
```

## License

The casks in this repository are MIT licensed. Each application carries its own license,
linked from its repository.
