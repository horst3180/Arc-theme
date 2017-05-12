if !ENABLE_TRANSPARENCY
themedir        = $(datadir)/themes/Arc-solid
themedarkerdir  = $(datadir)/themes/Arc-Darker-solid
themedarkdir    = $(datadir)/themes/Arc-Dark-solid
else
themedir        = $(datadir)/themes/Arc
themedarkerdir  = $(datadir)/themes/Arc-Darker
themedarkdir    = $(datadir)/themes/Arc-Dark
endif

ithemedir       = $(DESTDIR)$(themedir)
ithemedarkerdir   = $(DESTDIR)$(themedarkerdir)
ithemedarkdir  = $(DESTDIR)$(themedarkdir)

install-exec-hook:

install-data-local:

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)
	cp $(srcdir)/index.theme $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)
	cp $(srcdir)/index.theme-darker $(ithemedarkerdir)/index.theme
endif # ENABLE_LIGHT

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK


if ENABLE_CINNAMON
	$(MKDIR_P) $(ithemedir)/cinnamon

	cd $(srcdir)/cinnamon && cp thumbnail.png $(ithemedir)/cinnamon

	cd $(srcdir)/cinnamon && cp -R \
		common-assets \
		light-assets \
		cinnamon.css \
		$(ithemedir)/cinnamon

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp thumbnail-dark.png $(ithemedarkdir)/cinnamon/thumbnail.png

	cd $(srcdir)/cinnamon && cp -R \
		common-assets \
		dark-assets \
		$(ithemedarkdir)/cinnamon

	cd $(srcdir)/cinnamon && cp -R \
		cinnamon-dark.css \
		$(ithemedarkdir)/cinnamon/cinnamon.css
endif # ENABLE_DARK

endif # ENABLE_GNOME_SHELL


if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(ithemedir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		common-assets \
		light-assets \
		gnome-shell.css \
		$(ithemedir)/gnome-shell

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		common-assets \
		dark-assets \
		$(ithemedarkdir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		gnome-shell-dark.css \
		$(ithemedarkdir)/gnome-shell/gnome-shell.css
endif # ENABLE_DARK

endif # ENABLE_GNOME_SHELL


if ENABLE_GTK2

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets \
		menubar-toolbar \
		*.rc \
		gtkrc \
		$(ithemedir)/gtk-2.0
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets \
		menubar-toolbar \
		*.rc \
		$(ithemedarkerdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-darker \
		$(ithemedarkerdir)/gtk-2.0/gtkrc
endif # ENABLE_DARKER

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		menubar-toolbar \
		*.rc \
		$(ithemedarkdir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets-dark \
		$(ithemedarkdir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-dark \
		$(ithemedarkdir)/gtk-2.0/gtkrc
endif # ENABLE_DARK

endif # ENABLE_GTK2


if ENABLE_GTK3

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0 && cp thumbnail.png $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		assets \
		gtk.css \
		gtk-dark.css \
		$(ithemedir)/gtk-3.0
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0 && cp thumbnail.png $(ithemedarkerdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		assets \
		gtk-dark.css \
		$(ithemedarkerdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-darker.css \
		$(ithemedarkerdir)/gtk-3.0/gtk.css
endif # ENABLE_DARKER

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0 && cp thumbnail-dark.png $(ithemedarkdir)/gtk-3.0/thumbnail.png

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		assets \
		$(ithemedarkdir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk.css
endif # ENABLE_DARK

if !ENABLE_TRANSPARENCY

if ENABLE_LIGHT
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid.css \
		$(ithemedir)/gtk-3.0/gtk.css

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-dark.css \
		$(ithemedir)/gtk-3.0/gtk-dark.css
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-darker.css \
		$(ithemedarkerdir)/gtk-3.0/gtk.css

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-dark.css \
		$(ithemedarkerdir)/gtk-3.0/gtk-dark.css
endif # ENABLE_DARKER

if ENABLE_DARK
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-dark.css \
		$(ithemedarkdir)/gtk-3.0/gtk.css
endif # ENABLE_DARK

endif #!ENABLE_TRANSPARENCY


	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		compile-gresources.sh \
		$(ithemedir)/gtk-3.0/compile-gresources.sh

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		compile-gresources.sh \
		$(ithemedarkdir)/gtk-3.0/compile-gresources.sh

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		compile-gresources.sh \
		$(ithemedarkerdir)/gtk-3.0/compile-gresources.sh

	cd $(ithemedir)/gtk-3.0/ && ./compile-gresources.sh
	cd $(ithemedarkdir)/gtk-3.0/ && ./compile-gresources.sh
	cd $(ithemedarkerdir)/gtk-3.0/ && ./compile-gresources.sh

endif # ENABLE_GTK3


if ENABLE_METACITY

if ENABLE_LIGHT
	cp -R $(srcdir)/metacity-1 $(ithemedir)

	cd $(ithemedir)/metacity-1 && rm metacity-theme-1-dark.xml metacity-theme-2-dark.xml thumbnail-dark.png
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -R $(srcdir)/metacity-1 $(ithemedarkerdir)

	cd $(ithemedarkerdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml && \
		mv thumbnail-dark.png thumbnail.png
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -R $(srcdir)/metacity-1 $(ithemedarkdir)

	cd $(ithemedarkdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml && \
		mv thumbnail-dark.png thumbnail.png
endif # ENABLE_DARK

endif # ENABLE_METACITY


if ENABLE_UNITY

if ENABLE_LIGHT
	cp -R $(srcdir)/unity $(ithemedir)

	cd $(ithemedir)/unity && rm -rf window-buttons-dark
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -R $(srcdir)/unity $(ithemedarkerdir)

	cd $(ithemedarkerdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -R $(srcdir)/unity $(ithemedarkdir)

	cd $(ithemedarkdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARK

endif # ENABLE_UNITY


if ENABLE_XFWM

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/xfwm4

	cd $(srcdir)/xfwm4 && \
		cp -R assets/*.png $(ithemedir)/xfwm4 && \
		cp themerc $(ithemedir)/xfwm4/themerc
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)/xfwm4

	cd $(srcdir)/xfwm4 && \
		cp -R assets-dark/*.png $(ithemedarkerdir)/xfwm4 && \
		cp themerc-dark $(ithemedarkerdir)/xfwm4/themerc
endif # ENABLE_DARKER

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)/xfwm4

	cd $(srcdir)/xfwm4 && \
		cp -R assets-dark/*.png $(ithemedarkdir)/xfwm4 && \
		cp themerc-dark $(ithemedarkdir)/xfwm4/themerc
endif # ENABLE_DARK

endif # ENABLE_XFWM


uninstall-local:
	rm -rf $(ithemedir)

if ENABLE_DARKER
	rm -rf $(ithemedarkerdir)
endif # ENABLE_DARKER

if ENABLE_DARK
	rm -rf $(ithemedarkdir)
endif # ENABLE_DARK


EXTRA_DIST = $(srcdir)/cinnamon \
	     $(srcdir)/gnome-shell \
	     $(srcdir)/gtk-2.0 \
	     $(srcdir)/gtk-3.0 \
	     $(srcdir)/metacity-1 \
	     $(srcdir)/unity \
	     $(srcdir)/xfwm4 \
	     $(srcdir)/index.theme \
	     $(srcdir)/index.theme-darker \
	     $(srcdir)/index.theme-dark
