#!/usr/bin/env bash
# Modificado por Grupo MOST para Most Image. Obra original: PhotoCraft del equipo ArtCraft (https://github.com/storytold/photocraft), Apache-2.0.
# Regenerate every app icon from assets/app-icon/most-image.svg (the canonical master).
#
# Needs: resvg (brew install resvg / cargo install resvg). On macOS, iconutil also writes the
# .icns. The outputs are committed, so packaging never needs these tools.
#
#   packaging/icons.sh
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIR="$ROOT/assets/app-icon"
SVG="$DIR/most-image.svg"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

command -v resvg >/dev/null || { echo "error: resvg not found (brew install resvg)" >&2; exit 1; }

# The artwork is a full-bleed 512-unit tile (rx=112). macOS icons pad it to Apple's 824/1024 body
# grid (transparent margin). Windows and Linux use the whole tile, so their corners are as round
# as the other Craft apps' (#4478).
grep -q 'viewBox="0 0 512 512"' "$SVG" || { echo "error: expected viewBox=\"0 0 512 512\" in $SVG" >&2; exit 1; }
MAC="$TMP/mac.svg"
sed 's/viewBox="0 0 512 512"/viewBox="-62 -62 636 636"/' "$SVG" >"$MAC"

render() { resvg -w "$2" -h "$2" "$1" "$3" </dev/null; }

render "$MAC" 1024 "$DIR/most-image-1024.png"

# Linux hicolor theme.
for s in 16 24 32 48 64 128 256 512; do
  mkdir -p "$DIR/hicolor/${s}x${s}/apps"
  render "$SVG" "$s" "$DIR/hicolor/${s}x${s}/apps/com.grupomostmexico.mostimage.png"
done
mkdir -p "$DIR/hicolor/scalable/apps"
# The lighter trace (most-image-small.svg) keeps the scalable theme icon cheap to render.
cp "$DIR/most-image-small.svg" "$DIR/hicolor/scalable/apps/com.grupomostmexico.mostimage.svg"

# Windows .ico.
ICO_PNGS=()
for s in 16 20 24 32 40 48 64 128 256; do
  render "$SVG" "$s" "$TMP/ico-$s.png"
  ICO_PNGS+=("$TMP/ico-$s.png")
done
(cd "$ROOT" && cargo run -q -p xtask -- ico "$DIR/most-image.ico" "${ICO_PNGS[@]}")

# macOS .icns.
if command -v iconutil >/dev/null; then
  SET="$TMP/most-image.iconset"
  mkdir -p "$SET"
  for s in 16 32 128 256 512; do
    render "$MAC" "$s" "$SET/icon_${s}x${s}.png"
    render "$MAC" $((s * 2)) "$SET/icon_${s}x${s}@2x.png"
  done
  iconutil -c icns -o "$DIR/most-image.icns" "$SET"
else
  echo "warning: iconutil not found (macOS only); most-image.icns not regenerated" >&2
fi
echo "icons written to $DIR"
