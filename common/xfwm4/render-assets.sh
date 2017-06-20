#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

SRC_FILE="assets.svg"
DARK_SRC_FILE="assets-dark.svg"
ASSETS_DIR="assets"
DARK_ASSETS_DIR="assets-dark"

INDEX="assets.txt"

# PNG rendering
for i in `cat $INDEX`
do 
if [ -f $ASSETS_DIR/$i.png ]; then
    echo $ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i.png 
fi
if [ -f $DARK_ASSETS_DIR/$i.png ]; then
    echo $DARK_ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $DARK_ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$DARK_ASSETS_DIR/$i.png $DARK_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $DARK_ASSETS_DIR/$i.png 
fi
done

# XPM creation
for i in `cat $INDEX`
do 
if [ -f $ASSETS_DIR/$i.xpm ]; then
    echo $ASSETS_DIR/$i.xpm exists.
else
    echo
    echo Creating $ASSETS_DIR/$i.xpm
    convert $ASSETS_DIR/$i.png $ASSETS_DIR/$i.xpm
fi
if [ -f $DARK_ASSETS_DIR/$i.xpm ]; then
    echo $DARK_ASSETS_DIR/$i.xpm exists.
else
    echo
    echo Creating $DARK_ASSETS_DIR/$i.xpm
    convert $DARK_ASSETS_DIR/$i.png $DARK_ASSETS_DIR/$i.xpm
fi
done
exit 0