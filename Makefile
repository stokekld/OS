C=debootstrap

ifndef ARCH
ARCH=amd64
endif

ifndef DIST
DIST=jessie
endif

ifndef DIR
DIR=./build
endif

PACKAGES=$(shell sed -e '/^\#/d' -e '/^[\ \t]*$$/d' packages.conf | tr -s "\n" "," | sed '$$s/,$$//g')

MIRROR=http://ftp.us.debian.org/debian/

.PHONY: build

build:
	$(C) --arch $(ARCH) --include=$(PACKAGES) --foreign $(DIST) $(DIR) $(MIRROR)

all: build

clean:
	rm -rf $(DIR)
