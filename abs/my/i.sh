#!/usr/bin/env sh

set -e

echo "Fetching fonts from Apple..."
curl -o /tmp/SF-Font.dmg https://developer.apple.com/design/downloads/SF-Font.dmg
hdiutil attach -nobrowse -quiet -noverify -noautoopen -mountpoint /Volumes/SF-Font /tmp/SF-Font.dmg

echo "Installing fonts..."
cp -R /Volumes/SF-Font/. /Library/Fonts/
cp -R /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/. /Library/Fonts/

echo "Cleaning up..."
hdiutil detach /Volumes/SF-Font/
