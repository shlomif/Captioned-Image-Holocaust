SVG = Holocaust-did-not-happen.svg
PNG = $(SVG).png
WEBP = $(SVG).webp

all: $(WEBP)

$(WEBP): $(PNG)
	gm convert $< $@

$(PNG): $(SVG)
	inkscape --export-png=$@ --export-width=400 $<

upload: all
	rsync -a --progress -v --inplace *.jpg *.svg *.png *.webp $$__HOMEPAGE_REMOTE_PATH/temp-holocaust-did-not-happen-f43mJyt7Kvl/
