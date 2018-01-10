# Gnome Shell Extension Zip Tool Makefile

.ONESHELL:

VERSION_EXISTS=$(shell [ -e ./VERSION ] && echo 1 || echo 0 )

ifeq ($(VERSION_EXISTS), 1)
	VERSION=$(shell cat ./VERSION)
	COMMIT=$(shell git rev-parse HEAD)
endif

install:
	if [ $(VERSION_EXISTS) -gt 0 ]; then \
		sed -i 's,\"Version:.*$\",\"Version: $(VERSION)\",' gse-zip-tool ; \
		sed -i 's,\"Commit:.*$\",\"Commit: $(COMMIT)\",' gse-zip-tool ; \
	fi
	mkdir -p $(HOME)/.local/bin
	chmod 0700 $(HOME)/.local/bin
	chmod 0755 gse-zip-tool
	cp -f gse-zip-tool $(HOME)/.local/bin
	mkdir -p $(HOME)/.local/share/gse-zip-tool
	chmod 0700 $(HOME)/.local/share/gse-zip-tool
	cp -f gse-zip-tool.ui $(HOME)/.local/share/gse-zip-tool
	cp -f gse-zip-tool.png $(HOME)/.local/share/gse-zip-tool
	cat org.nls1729.gse-zip-tool.desktop.in | sed -e "s,HOME,$(HOME),g" > $(HOME)/.local/share/applications/org.nls1729.gse-zip-tool.desktop


uninstall:
	rm -f $(HOME)/.local/bin/gse-zip-tool
	rm -rf $(HOME)/.local/share/gse-zip-tool
	rm -f $(HOME)/.local/share/applications/org.nls1729.gse-zip-tool.desktop

