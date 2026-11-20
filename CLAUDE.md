# SimEffects Analysis

An app made from Daisy's App's program with only its SimEffects and Video modules, laid out its own way (README.md:
what's in it, the files here, how a layout change and a release go). **All code is in Daisy's App**
(`D:\OneDrive\Code\Windows\DaisysApp`, rosscarlson/DaisysApp; its CLAUDE.md and the modules' READMEs): this
repository holds only `product.json` (name, version, layout), `daisysapp.ref`, the icon, CHANGELOG, the build and the
release workflow.

## Rules

- **Release only when the user asks for a SimEffects Analysis release.** A Daisy's App release never releases this,
  nor does this release Daisy's App. Version: `product.json`, 3 parts.
- **A layout change** (which tabs, what's hidden, Settings' cards): first `product.json` if a key covers it. Else a
  switch in Daisy's App's code, off in Daisy's App and on only when this product asks
  (`AppPaths.Product?.Hides("Module/Part")`, `Shows`/`Makes`, `Game`…; Daisy's App's `products/README.md` lists
  them), committed and pushed to Daisy's App's main, then `daisysapp.ref` set to that commit. Every change goes in
  CHANGELOG.md under **Next**.
- Working on Daisy's App's code: follow its CLAUDE.md (never stop DaisysApp.exe; its checkout at
  `D:\OneDrive\Code\Windows\DaisysApp` is behind origin with another session's uncommitted work: work in a fresh
  worktree of origin/main under `%LOCALAPPDATA%\Temp`, stage files by name; temp files only in `%LOCALAPPDATA%\Temp`,
  never `D:\Temp`).
- **Testing:** the user's installed copy (`C:\Program Files\SimEffects Analysis`) may be running: don't stop it. Copy
  the built program folder (`%LOCALAPPDATA%\Temp\sea-build\artifacts\publish-SimEffectsAnalysis`) to
  `%LOCALAPPDATA%\Temp\SeaTest`, rename the exe `SeaTest.exe` (its own settings in `%APPDATA%\SeaTest`), run it, check
  by UIA and PrintWindow screenshots (no keys or clicks), then stop it and delete `%APPDATA%\SeaTest`,
  `%LOCALAPPDATA%\SeaTest` and the copy.
- **UI text:** labels and short tooltips only; no "Daisy's App" anywhere the user sees (Core's `Loc` swaps in the title).

## Release

1. `product.json` Version raised; CHANGELOG's **Next** renamed to it; `daisysapp.ref` = the Daisy's App commit
   (on its origin/main); commit and push here.
2. `git tag v<Version>; git push origin v<Version>`; `gh run watch` the Release run; give the user the release link.
3. **0.2.2 only (the bridge):** 0.2.0–0.2.1 read Daisy's App's repository (tags `sea-v*`), so put the same installer
   there too: `gh release create sea-v0.2.2 <exe> -R rosscarlson/DaisysApp --latest=false --title "SimEffects Analysis
   0.2.2" --notes "..."`. From 0.2.2 on it reads only this repository (app.json `Repo`). Drop this step after.

## Session notes

- **History:** asked 2026-11-19 (from the wrapper idea: SimEffects + Video as its own app, the orange ForzaLeaderBoard
  icon, its own installer, settings, updater and version; no visible "Daisy's App"). 0.2.0 and 0.2.1 released from
  Daisy's App's repo (`products/SimEffectsAnalysis`, workflow `release-product.yml`, tags `sea-v*`, never latest).
  0.2.1: tabs Analysis | Overlays | Recording | Settings; Mini Mirror and the FPS Overlay gone (Video's Overlay made
  hidden: Recording needs its service); Forza Horizon only (`SimProfiles.OnlyGame`); no setup tool picker; General
  without Save/Load, Modules, Audio, Storage.
- **Moved here 2026-11-19** (the user: the layout will differ enough to keep apart; module code stays in Daisy's App).
  Daisy's App: `build.ps1 -Product <folder>`, app.json `Repo` read by `UpdateService.Releases`, `Hide` list
  (`ProductInfo.Hides`). Next release (0.2.2) has: no Known Tracks card, no Current Location (compass) button.
- **Decisions:** same program renamed, self-contained, modules beside it; virtual webcam left out (registered under
  Daisy's App's name and CLSID: two installs would break each other); settings `%APPDATA%\SimEffectsAnalysis`.
- **To do / offered:** the `YOUTUBE_CLIENT` secret has to be added to this repo by the user (Daisy's App's has it; I
  can't read it) or YouTube sign-in is off in builds. Offered: hiding Recording's Benchmark and History (no frames
  counted without the Overlay's permission step); copying Daisy's App's laps over; code signing (Azure Trusted
  Signing) for the SmartScreen warning. Not tried yet: an update from an installed copy (0.2.0 → 0.2.1 → 0.2.2).
