<#
  Builds SimEffects Analysis's installer from Daisy's App's source at the commit in daisysapp.ref (or -Ref), in a
  worktree of the Daisy's App checkout under %LOCALAPPDATA%\Temp (never in that checkout itself: another session's
  work may be uncommitted there). -> %LOCALAPPDATA%\Temp\sea-build\artifacts\SimEffectsAnalysis-Setup-<version>.exe
  Usage:  .\build.ps1                 # the commit in daisysapp.ref
          .\build.ps1 -Ref origin/main  # try Daisy's App's newest
#>
param([string]$Ref, [string]$DaisysApp = (Join-Path $PSScriptRoot '..\Windows\DaisysApp'))
$ErrorActionPreference = 'Stop'

if (-not $Ref) { $Ref = (Get-Content (Join-Path $PSScriptRoot 'daisysapp.ref') -Raw).Trim() }
$work = Join-Path $env:LOCALAPPDATA 'Temp\sea-build'
git -C $DaisysApp fetch --quiet origin
if (Test-Path $work) { git -C $work checkout --quiet --detach $Ref }
else { git -C $DaisysApp worktree add --detach $work $Ref }
if ($LASTEXITCODE) { throw "Couldn't get Daisy's App at $Ref" }
& (Join-Path $work 'build.ps1') -Product $PSScriptRoot
