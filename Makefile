C=debootstrap
ARCH=amd64
DIST=jessie
DIR=build
PACKAGES=keyboard-configuration,grub2,aptitude,xorg,vim,xorg,i3
MIRROR=http://ftp.us.debian.org/debian

$(DIR):
	$(C) --arch $(ARCH) --include=$(PACKAGES) $(DIST) $(DIR) $(MIRROR)

all: $(DIR)

clean:
	rm -rf $(DIR)
