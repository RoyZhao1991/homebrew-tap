# Homebrew Tap for LingShu

This tap distributes the signed and Apple-notarized public builds of [LingShu](https://github.com/RoyZhao1991/LingShu), a native macOS AI agent that turns goals into verified deliverables.

## Install

```bash
brew install --cask RoyZhao1991/tap/lingshu
```

The cask installs both `灵枢.app` and the bundled `lingshu` CLI. Launch the app once to choose a language and connect a model provider:

```bash
open -a "灵枢"
lingshu status
```

## Upgrade

```bash
brew update
brew upgrade --cask lingshu
```

## Uninstall

```bash
brew uninstall --cask lingshu
```

Use `brew uninstall --cask --zap lingshu` only when you also want to remove LingShu's local settings and caches. Model credentials stored in macOS Keychain are intentionally not removed automatically.

Source code, release notes, issue tracking, and security policy live in the [main LingShu repository](https://github.com/RoyZhao1991/LingShu).
