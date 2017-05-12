#!/bin/sh

# Setup
mv gtk.css gtk-main.css
mv gtk-dark.css gtk-main-dark.css


# Get processed assets lists
ls ./assets | sort > temp_asset_list.txt


# Build dynamic gresouce xml spec from css and assets
read -d '' RES_PART1 <<"EOF"
<?xml version="1.0" encoding="UTF-8"?>
<gresources>
<gresource prefix="/org/gnome/arc-theme">
EOF
echo $RES_PART1 > gtk.gresource.xml


# Import as nodes the file assets
xargs -i echo '<file preprocess="to-pixdata">assets/{}</file>' >> gtk.gresource.xml < temp_asset_list.txt
rm -f temp_asset_list.txt


# Write the css file information to the template
read -d '' RES_PART2 <<"EOF"
<file>gtk-main.css</file>
<file>gtk-main-dark.css</file>
</gresource>
</gresources>
EOF
echo $RES_PART2 >> gtk.gresource.xml

# Compile the gresource file
glib-compile-resources gtk.gresource.xml
echo '@import url("resource:///org/gnome/arc-theme/gtk-main.css");' > gtk.css
echo '@import url("resource:///org/gnome/arc-theme/gtk-main-dark.css");' > gtk-dark.css


# Cleanup
rm -rf assets
rm -f gtk.gresource.xml
rm -f gtk-main.css
rm -f gtk-main-dark.css
rm -f compile-gresources.sh
