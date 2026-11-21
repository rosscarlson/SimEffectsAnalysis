# SimEffects Analysis: what's new

Each release's notes, newest first (the release workflow puts the version's section on its GitHub release). Built
from Daisy's App's source at the commit in `daisysapp.ref`. Changes not released yet go under **Next**, renamed to
the version when it's released. 0.2.0 and 0.2.1 were released from Daisy's App's repository (tags `sea-v0.2.0`,
`sea-v0.2.1`).

## 0.4.0

- Analysis: the sessions are looked at on ForzaLeaderBoard's website now, so the tab is only Race Videos (Record
  each race, Upload to YouTube and who can watch it, Keep the video file, Delete Incomplete Race; YouTube is needed
  for a race to be verified), the ForzaLeaderBoard account (Sign In, Open the website) and Uploads: the latest
  sessions, each one's upload and YouTube video, a right-click to retry one that failed.
- Every session goes to ForzaLeaderBoard by itself while signed in (from this version on; an older one: right-click,
  Upload).
- Settings: Accounts and General first; Startup and Updates are in General. Analysis' settings are gone (the website
  works them out).
- Forza Horizon Settings: Version's box as wide as its names; every process listed, a bullet each, no scrolling.
- Recording: the quality's line under its box right-aligned.

## 0.3.3

- Recording: Only the game's sound (on): Forza Horizon's sound without voice chat, videos or other programs.
- Recording: A game or program first, set to Forza Horizon (any of its processes); then Display and Region. No
  Performance card, no Camera button, no notes; Shape is Aspect Ratio.
- Settings: Accounts (ForzaLeaderBoard and YouTube in one card) and General (Appearance, Notifications, Language).
  ForzaLeaderBoard: one Sign In / Sign Out button, Sign Up a button shown only while signed out, signed in in green.
- Settings → Recording: labels right up against their boxes, the boxes lined up; a quality profile's settings under
  Edit, saved with Save (Daisy's App 4.18.12).
- Forza Horizon Settings: no Short Name or Modules (Analysis and Overlays always start with it); a narrower box to
  add a process.
- Shortcuts in a card like the others, with none set to start (Daisy's App's Ctrl+Alt+F9 for Record taken off).

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
