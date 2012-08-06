# Makefile for ubiquity-slideshow-netrunner

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_netrunner translations

build_init:
	mkdir -p $(BUILD)

build_netrunner: build_init
	cp -rL $(SOURCESLIDES)/netrunner $(BUILD)

translations:
	./generate-local-slides.sh netrunner

.PHONY : clean

clean:
	-rm -rf $(BUILD)
