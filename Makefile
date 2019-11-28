SVG = Holocaust-did-not-happen.svg
PNG = $(SVG).png
WEBP = $(SVG).webp
PNG400 = Holocaust.png
WEBP400 = Holocaust.webp

all: $(WEBP) $(WEBP400)

$(WEBP) $(WEBP400): %.webp: %.png
	gm convert $< $@

$(PNG400): $(SVG)
	inkscape --export-png=$@ --export-width=400 $<

$(PNG): $(SVG)
	inkscape --export-png=$@ --export-width=600 $<

upload: all
	rsync -a --progress -v --inplace *.jpg *.svg *.png *.webp $$__HOMEPAGE_REMOTE_PATH/temp-holocaust-did-not-happen-f43mJyt7Kvl/
