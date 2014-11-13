PDF := plakat.pdf sticker.pdf

all: $(PDF) logo-png

$(PDF): %.pdf: %.svg
	inkscape $< --export-pdf=$@

logo-png: logo.svg
	inkscape $< --export-png=logo-32x32.png -w 32 -h 32
	inkscape $< --export-png=logo-64x64.png -w 64 -h 64
	inkscape $< --export-png=logo-128x128.png -w 128 -h 128
	inkscape $< --export-png=logo-256x256.png -w 256 -h 256
	inkscape $< --export-png=logo-512x512.png -w 512 -h 512
	inkscape $< --export-png=logo-1024x1024.png -w 1024 -h 1024

clean:
	rm -f $(PDF)
