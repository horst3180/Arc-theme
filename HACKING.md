This theme uses node-sass/libsass to process the various .scss files. Never edit any of the .css files manually.

#### Editing the CSS based themes in the `common` directory (cinnamon, gnome-shell, gtk-3.0)

* Install `nvm` (https://github.com/creationix/nvm)

* Close and reopen your terminal

* Run `nvm i` and `npm i` from this directory

* Install `gulp` with `npm i -g gulp`

* Edit the `common/*/sass/*.scss` files

* Regenerate all .css files by executing `gulp` from the directory containing `gulpfile.js`. Alternatively execute `gulp --cwd` from any subdirectory containing a folder called `sass` to regenerate the .css files within that specific subdirectory only.

--

#### Editing the GTK 2 themes

* Go to `common/gtk-2.0`

* The colors and includes are defined in `gtkrc`, `gtkrc-dark` and `gtkrc-darker` for each theme variant

* `main.rc` contains the major part of the theme

* `panel.rc` contains the panel styling for XFCE and Mate

* `apps.rc` contains some application specific rules

Because this theme is heavily based on the pixmap engine, a lot of the styling comes from the images in the `assets` and `assets-dark` folders. Don't edit these images directly. See the next section.

--

#### Editing the images for the GTK 2 and GTK 3 themes

* Go to the `common/gtk-2.0` or `common/gtk-3.0/$gtk-version` directory

* Open the `assets.svg` or `assets-dark.svg` file in inkscape. Each object in the .svg file corresponds to an image in the `assets` or `assets-dark` folder

* Find the object you want to edit and make your changes. Important: Don't change the object id!

* Save `assets.svg` and delete the images corresponding to the edited .svg objects from the `assets` folder (or just delete everything in the `assets` folder)

* Run `./render-assets.sh` or `./render-dark-assets.sh` from a terminal
