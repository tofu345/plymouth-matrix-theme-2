PREFIX?=/usr/
target=$(DESTDIR)$(PREFIX)
THEMEDIR=$(target)/share/plymouth/themes/matrix2/

all:

install:
	mkdir -p $(THEMEDIR)
	install -m 644 matrix2.plymouth $(THEMEDIR)
	install -m 644 matrix2.script $(THEMEDIR)
