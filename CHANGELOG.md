# SimEffects Analysis: what's new

Each release's notes, newest first (the release workflow puts the version's section on its GitHub release). Built
from Daisy's App's source at the commit in `daisysapp.ref`. Changes not released yet go under **Next**, renamed to
the version when it's released. 0.2.0 and 0.2.1 were released from Daisy's App's repository (tags `sea-v0.2.0`,
`sea-v0.2.1`).

## 0.3.2

- YouTube: Sign In with your Google account, no OAuth client ID or secret to fill in.

## 0.3.1

- Forza Horizon Settings on Settings, beside Recording and Analysis: Short Name, Version, UDP Port, Auto Start,
  Processes and Modules (they were on the hidden Profiles tab).
- Forza Horizon's UDP port is the game's usual 8000 (it was 8001; an install on 8001 moves to 8000 once).
- Every overlay starts unticked (once, for an install that had them ticked).
- Forza Horizon's tracks are the app's list, the same on every PC (Daisy's App 4.18.9).

## 0.3.0

- Tabs in a new order: Analysis, Recording, Overlays, Settings.
- Settings on one page, no sub-tabs: Startup and System Tray | Updates; ForzaLeaderBoard | Appearance | Notifications
  | Language; Recording | Analysis with YouTube; Shortcuts; Files.
- The ForzaLeaderBoard account (server, filled with www.forzaleaderboard.com; user; password; Sign in, Sign up) is on
  Settings, and asked for once on the first run; Share Manager's Account button is gone.
- YouTube's Sign In on Settings, under Analysis.
- Recording only: no FPS overlay (nor its tray items or shortcuts), no Benchmark, no History; nothing is logged.
- Left Foot Braking on by default.
- Analysis without Known Tracks (Racing Statistics on its own) or the Current Location (compass) button.

## 0.2.1

- Its tabs: Analysis, Overlays, Recording, Settings. Shaker, Arduino, Notify, Wheel, AmbiLight, Mini Mirror and the
  FPS Overlay are gone.
- Forza Horizon only: its profile is always the one in use (no profile drop-down; Play / Stop and its shortcut at the
  top right).
- No tool picker in the setup; Settings → General without Save / Load, Modules, Audio or Storage; Translation files
  is a folder icon.

## 0.2.0

- The first release: SimEffects (Profiles, Shaker, Arduino, Notify, Wheel, AmbiLight, Overlays, Analysis) and Video
  (Mini Mirror, Overlay, Recording, for Analysis' race videos), as an app of its own with its own installer, settings
  (`%APPDATA%\SimEffectsAnalysis`), tray icon and updates.
