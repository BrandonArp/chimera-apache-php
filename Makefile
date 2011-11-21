MODAV = '../mods-available'
MODEN = $(DESTDIR)/etc/apache2/mods-enabled

build:

install:
	mkdir -p $(MODEN)
	ln -s '$(MODAV)/cgi.load' $(MODEN)/cgi.load
	ln -s '$(MODAV)/php5.conf' $(MODEN)/php5.conf
	ln -s '$(MODAV)/php5.load' $(MODEN)/php5.load

