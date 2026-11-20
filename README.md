# SimEffects Analysis

Lap, race and telemetry analysis for **Forza Horizon**, with overlays over the game and race videos: an app of its
own, made from [Daisy's App](https://github.com/rosscarlson/DaisysApp)'s program with only its SimEffects and Video
modules.

**Download:** the newest release's `SimEffectsAnalysis-Setup-<version>.exe`
([Releases](https://github.com/rosscarlson/SimEffectsAnalysis/releases)). It updates itself from this repository's
releases. The installer isn't code-signed yet, so Windows may warn that it isn't commonly downloaded: **Keep**, then
**More info → Run anyway**.

## What's in it

| Tab | What it is (in Daisy's App) |
|---|---|
| **Analysis** | SimEffects → Analysis: the car, tyres and race, every lap kept by track, car and class, Compare with the race video |
| **Overlays** | SimEffects → Overlays: Inputs, Dash and Analysis' blocks over the game |
| **Recording** | Video → Recording: recording with the graphics card's encoder (Analysis' race videos), benchmarks |
| **Settings** | General (startup and tray, updates, appearance, notifications, language, files), Shortcuts, Video, SimEffects |

Only Forza Horizon: its SimEffects profile is always the one in use; Play / Stop and its shortcut are at the top
right. Settings live in `%APPDATA%\SimEffectsAnalysis`, apart from Daisy's App's.

## How it's made

This repository holds **no module code**. The modules (SimEffects, Video), the shell (window, tabs, Settings,
updates, tray) and the hooks that lay it out are all in Daisy's App's repository. This one holds what makes the app
this app:

| File | |
|---|---|
| `product.json` | its name, title, version, installer AppId (`Guid`: never change it), modules, and its layout: `Tabs` (each a module's sub-tab shown as a tab, `Module/SubTab`, in order before Settings), `Hidden` (sub-tabs made but not shown, for a tab that needs them), `Game` (its one game), `Hide` (parts of a module left out), `Repo` (where its updater looks) |
| `daisysapp.ref` | the Daisy's App commit it's built from |
| `icon.png`, `icon.ico` | its icon: the program's, the installer's and the tray's |
| `CHANGELOG.md` | its releases' notes |
| `build.ps1` | builds the installer locally (a worktree of Daisy's App at `daisysapp.ref`, its `build.ps1 -Product <this folder>`) |
| `.github/workflows/release.yml` | a tag `v<Version>` builds it and publishes the release here |

The build writes `product.json`'s layout into `app.json` beside the program; Daisy's App's code reads it at start
(Core's `AppPaths.Product`) and lays itself out that way. What each key does, and where it's read, is in Daisy's
App's `products/README.md`.

**A change to the layout** that a key already covers is a change here (`product.json`). One that needs a new switch
in a module or the shell is a change in Daisy's App (named like the others: `Hides("Module/Part")`, off unless a
product asks), then `daisysapp.ref` moves to that commit.

**Release:** raise `Version` in `product.json`, rename **Next** in `CHANGELOG.md` to it, set `daisysapp.ref` to the
Daisy's App commit to build from (pushed to its main), commit, then `git tag v<Version>` and push the tag.
