#!/bin/sh

#Switch, at the end of the command line, between "true" and "false".

defaults write /Library/Preferences/ManagedInstalls AppleSoftwareUpdatesOnly -bool false
defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates -bool false
defaults write /Library/Preferences/ManagedInstalls ShowOptionalInstallsForHigherOSVersions -bool false
