# Arc Theme

Arc is a flat theme with transparent elements for GTK 3, GTK 2 and GNOME Shell which supports GTK 3 and GTK 2 based desktop environments like GNOME, Unity, Budgie, Pantheon, Xfce, MATE, etc.

## Arc is available in three variants 

##### Arc

![A screenshot of the Arc theme](http://i.imgur.com/Ph5ObOa.png)

##### Arc-Darker

![A screenshot of the Arc-Darker theme](http://i.imgur.com/NC6dqyl.png)

##### Arc-Dark

![A screenshot of the Arc-Dark theme](http://i.imgur.com/5AGlCnA.png)

## Installation

### Packages

|Distro|Package Name/Link|
|:----:|:----:|
| Arch Linux | `arc-gtk-theme`, [`arc-gtk-theme-git`](https://aur.archlinux.org/packages/arc-gtk-theme-git) (AUR) |
| Debian 8 | [OBS Repo][obs-repo] |
| Debian Testing/Unstable | `arc-theme` |
| Fedora 21 - 23 | [OBS Repo][obs-repo] |
| Fedora 24 -25 | `arc-theme` |
| Gentoo/Funtoo | `x11-themes/arc-theme` from the [Scriptkitties Overlay][sk-overlay] |
| openSUSE | [OBS Repo][obs-repo] |
| Solus | `arc-gtk-theme` |
| Ubuntu 15.04 - 16.04 | [OBS Repo][obs-repo] |
| Ubuntu 16.10 | `arc-theme` |

**elementary OS Note:** elementary OS Freya users can install the package for Ubuntu 15.04, Loki users can install the package for Ubuntu 16.04.

**AUR Note:** If you're having trouble with the AUR packages please email the package maintainer at zach@zach-adams.com before creating an issue.

A non-transparent version of the theme is available here: [Arc Solid OBS repo](http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme-solid)

--

### Manual Installation

To build the theme the follwing packages are required 
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` for Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` to clone the source directory

**Note:** For distributions which don't ship separate development packages, just the GTK 3 package is needed instead of the `-dev` packages.

For the theme to function properly, install the following
* GNOME Shell 3.14 - 3.24, GTK 3.14 - 3.22
* The `gnome-themes-standard` package
* The murrine engine. This has different names depending on the distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Install the theme with the following commands

#### 1. Get the source

Clone the git repository with

    git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme

#### 2. Build and install the theme

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh are

    --disable-transparency     disable transparency in the GTK3 theme
    --disable-light            disable Arc Light support
    --disable-darker           disable Arc Darker support
    --disable-dark             disable Arc Dark support
    --disable-cinnamon         disable Cinnamon support
    --disable-gnome-shell      disable GNOME Shell support
    --disable-gtk2             disable GTK2 support
    --disable-gtk3             disable GTK3 support
    --disable-metacity         disable Metacity support
    --disable-unity            disable Unity support
    --disable-xfwm             disable XFWM support

    --with-gnome=<version>     build the theme for a specific GNOME version (3.14, 3.16, 3.18, 3.20, 3.22)
                               Note 1: Normally the correct version is detected automatically and this
                               option should not be needed.
                               Note 2: For GNOME 3.24, use --with-gnome-version=3.22
                               (this works for now, the build system will be improved in the future)

After the installation is complete the theme can be activated with `gnome-tweak-tool` or a similar program by selecting `Arc`, `Arc-Darker` or `Arc-Dark` as Window/GTK+ theme and `Arc` or `Arc-Dark` as GNOME Shell/Cinnamon theme.

If the `--disable-transparency` option was used, the theme will be installed as `Arc-solid`, `Arc-Darker-solid` and `Arc-Dark-solid`.

## Uninstall

Run

    sudo make uninstall

from the cloned git repository, or

    sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}

## Extras

### Arc KDE
A port of Arc for the Plasma 5 desktop with a few additions and extras. Available [here](https://github.com/PapirusDevelopmentTeam/arc-kde).

### Arc Firefox theme
A theme for Firefox is available at https://github.com/horst3180/arc-firefox-theme

### Arc icon theme
The Arc icon theme is available at https://github.com/horst3180/arc-icon-theme

### Chrome/Chromium theme
To install the Chrome/Chromium theme go to the `extra/Chrome` folder and drag and drop the arc-theme.crx or arc-dark-theme.crx file into the Chrome/Chromium window. The source of the Chrome themes is located in the source "Chrome/arc-theme" folder.

### Plank theme
To install the Plank theme, copy the `extra/Arc-Plank` folder to `~/.local/share/plank/themes` or to `/usr/share/plank/themes` for system-wide use.
Now open the Plank preferences window by executing `plank --preferences` from a terminal and select `Arc-Plank` as the theme.

### Arc-Dark for Ubuntu Software Center
The Arc Dark theme for the Ubuntu Software Center by [mervick](https://github.com/mervick) can be installed from [here](https://github.com/mervick/arc-dark-software-center). It solves readability issues with Arc Dark and the Ubuntu Software Center.

## Troubleshooting

If you use Ubuntu with a newer GTK/GNOME version than the one included by default (i.e Ubuntu 14.04 with GTK 3.14 or Ubuntu 15.04 with GTK 3.16, etc.) the prebuilt packages won't work properly and the theme has to be installed manually as described above.
This is also true for other distros with a different GTK/GNOME version than the one included by default

--

If you get artifacts like black or invisible backgrounds under Unity, disable overlay scrollbars with

    gsettings set com.canonical.desktop.interface scrollbar-mode normal


## Bugs
If you find a bug, please report it at https://github.com/horst3180/arc-theme/issues

## License
Arc is available under the terms of the GPL-3.0. See `COPYING` for details.

## Full Preview
![A full screenshot of the Arc theme](http://i.imgur.com/tD1OBQ3.png)
<sub>Screenshot Details: Icons: [Arc](https://github.com/horst3180/arc-icon-theme) | Launcher Icons based on [White Pixel Icons](http://darkdawg.deviantart.com/art/White-Pixel-Icons-252310560) | [Wallpaper](https://pixabay.com/photo-869593/) | Font: Futura Bk bt</sub>

[obs-repo]: http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme
[sk-overlay]: https://c.darenet.org/scriptkitties/overlay
