PREFIX?=/usr
target=$(DESTDIR)$(PREFIX)
THEMEDIR=$(target)/share/plymouth/themes/rules/

all:

install:
	mkdir -p $(THEMEDIR)
	install -m 644 rules.plymouth $(THEMEDIR)
	install -m 644 rules.script $(THEMEDIR)
