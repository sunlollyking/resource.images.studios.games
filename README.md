# Game Studio Icons - Coloured

A Kodi image resource add-on (`resource.images.studios.games`) with logos of
video game publishers, for skins to show beside a game. Kodi's studio packs
come from film and television and have few game companies: Sega, Nintendo,
Konami and most others are missing.

Logos are 161x109 transparent PNGs, named in lower case after the company as
the game library names it (`sega.png`, `hudson soft.png`), and drawn to read on
a dark background.

## Install

Download the zip from the releases page and use *Install from zip file* in
Kodi. A skin uses it the way it uses the studio packs:

    resource://resource.images.studios.games/$INFO[ListItem.Studio].png

## Build

The logos ship packed into `resources/Textures.xbt`, as Kodi's own packs do,
which also lets a skin ask for a name in any case. Packing needs Kodi's
TexturePacker:

    ./build.sh path/to/TexturePacker

## Adding a logo

Add the PNG to `resources/` under the company's name in lower case, and its
source and licence to `CREDITS.md`. Only freely licensed or public domain
images, please.

## Licence

CC BY-SA 3.0 US, as Kodi's studio packs. Some logos come from
[resource.images.studios.coloured](https://github.com/XBMC-Addons/resource.images.studios.coloured);
see `CREDITS.md`. Logos are trademarks of their owners.
