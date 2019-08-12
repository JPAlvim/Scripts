#!/bin/sh

CUSTOMER=CUSTOMER
BUSINESS_UNIT=UNIT

sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "http://mdm.seedstore.io/repo/$CUSTOMER"
sudo defaults write /Library/Preferences/ManagedInstalls PackageURL "http://mdm.seedstore.io/repo/$CUSTOMER/pkgs"
sudo defaults write /Library/Preferences/ManagedInstalls CatalogURL "http://mdm.seedstore.io/repo/$CUSTOMER/catalogs"
sudo defaults write /Library/Preferences/ManagedInstalls ManifestURL "http://mdm.seedstore.io/repo/$CUSTOMER/manifests"
sudo defaults write /Library/Preferences/ManagedInstalls IconURL "http://mdm.seedstore.io/repo/$CUSTOMER/icons"
sudo defaults write /Library/Preferences/ManagedInstalls ClientResourceURL "http://mdm.seedstore.io/repo/$CUSTOMER/client_resources"

sudo defaults write /Library/Preferences/MunkiReport Passphrase "'$BUSINESS_UNIT'"
sudo /bin/bash -c "$(curl -s http://mdm.seedstore.io/index.php?/install)"
