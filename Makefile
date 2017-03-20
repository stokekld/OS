C=debootstrap
ARCH=amd64
DIST=jessie
DIR=/mnt
PACKAGES=keyboard-configuration,grub2,aptitude,xorg,vim,xorg,i3
MIRROR=http://ftp.us.debian.org/debian

.PHONY: $(DIR)

$(DIR):
	$(C) --arch $(ARCH) --include=$(PACKAGES) --foreign $(DIST) $(DIR) $(MIRROR)

all: $(DIR)

clean:
	rm -rf $(DIR)
