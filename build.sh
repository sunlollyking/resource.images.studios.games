#!/bin/sh
# Builds an installable zip: the logos packed into resources/Textures.xbt, as
# Kodi's own image packs ship, which is also what makes their names match
# whatever case a skin asks in. Needs Kodi's TexturePacker.
#   ./build.sh [path/to/TexturePacker]
set -e
cd "$(dirname "$0")"
TP=${1:-TexturePacker}
ID=resource.images.studios.games
VERSION=$(sed -n 's/.*<addon[^>]* version="\([^"]*\)".*/\1/p' addon.xml)
OUT=$(mktemp -d)
mkdir -p "$OUT/$ID/resources"
cp addon.xml info.xml icon.png LICENSE.txt CREDITS.md "$OUT/$ID/"
"$TP" -input resources -output "$OUT/$ID/resources/Textures.xbt" >/dev/null
(cd "$OUT" && zip -qr "$ID-$VERSION.zip" "$ID")
mv "$OUT/$ID-$VERSION.zip" .
rm -rf "$OUT"
echo "$ID-$VERSION.zip"
