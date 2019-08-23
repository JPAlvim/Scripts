#!/bin/sh

## by José Paulo - https://github.com/JPAlvim

defaults write /Library/Preferences/ManagedInstalls AppleSoftwareUpdatesOnly -bool false
defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates -bool true
defaults write /Library/Preferences/ManagedInstalls ShowOptionalInstallsForHigherOSVersions -bool true
