DESTDIR ?= tmp/output
INSTALL ?= install

all:

clean:

mrproper: clean
	rm -rf tmp/output
	-rmdir --ignore-fail-on-non-empty --parents tmp

install:
	umask 022
	mkdir -p $(DESTDIR)/usr/lib/udev/rules.d
	cp -t $(DESTDIR)/usr/lib/udev/rules.d \
		80-config-dlitz-nvme-disable-wbcache.rules

	mkdir -p $(DESTDIR)/usr/lib/systemd/system
	cp -t $(DESTDIR)/usr/lib/systemd/system \
		nvme-disable-wbcache@.service

.PHONY: all install clean
