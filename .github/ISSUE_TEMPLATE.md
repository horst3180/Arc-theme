**Please read this before posting, this list was created for avoiding duplicated issues.**

**If yours isn't listed here, delete this and continue.**

- The theme doesn't works in [distro] that have a GTK+ 3 version lower than 3.14 (i.e. Linux Mint 17.x).
  - Arc *only supports versions higher or equal than* 3.14.
- The theme is broken after a major GTK+ 3 update (i.e. 3.18 :point_right: 3.20).
  - Update the package or install from sources.
- The theme is broken after installing from a repository.
  - Check if the repository that you're using is *specifically* for the distribution (and distribution/GTK version) that you're using.
- The theme is broken after installing from sources.
  - Possibly a bug on GTK+ 3 version checking, use `--with-gnome=<version>` flag with `./autogen.sh`.
- Theme isn't transparent on GNOME applications without CSD (i.e. Ubuntu's patched Nautilus).
  - Transparency on GTK+ 3 themes *isn't supported* for non-CSD applications.
- Theme doesn't build from AUR in Arch/Manjaro and others.
  - Ensure you have the `base-devel` group installed.
- Some GTK+ 3 applications have a transparent background in Ubuntu.
  - Run this in terminal: `gsettings set com.canonical.desktop.interface scrollbar-mode normal`.
- Using XFCE, the notifications looks always full.
  - This is already fixed, check if your Arc version is the lastest.
- GTK+ 2 theme looks like Windows 95 and LibreOffice/others looks ugly.
  - Check if you have the Murrine GTK engine and `gnome-themes-standard` installed.

----

- [ ] I read the list above.
- [ ] I read the README.
- [ ] I checked if my issue isn't duplicated.

**Details:**

- Distribution:
- Desktop environment:
- GTK+ 3 version:
- Arc version (commit): ``
