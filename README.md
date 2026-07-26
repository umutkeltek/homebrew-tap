# homebrew-tap

Homebrew tap for [Sayframe](https://sayframe.app) — on-device voice to text for Mac, private by default.

## Install

```sh
brew install --cask sayframeapp/tap/sayframe
```

Or tap first, then install:

```sh
brew tap sayframeapp/tap
brew install --cask sayframe
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon and Intel are both supported (universal build)

## Updates

Sayframe updates itself automatically via Sparkle, so Homebrew will not
reinstall it on `brew upgrade`. The cask's `livecheck` tracks the appcast at
`https://dl.sayframe.app/appcast.xml`.
