#!/bin/bash
#
# Export the font files using Birdfont.

# TODO: Add hinting.

SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR=$SOURCE_DIR/build
SOURCES=$SOURCE_DIR/*.bf

rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"

for file in $SOURCES; do
  birdfont-export --output "$BUILD_DIR" "$file"
done
