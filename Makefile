PDF := plakat.pdf sticker.pdf

all: $(PDF) wiki

$(PDF): %.pdf: %.svg
	inkscape $< --export-pdf=$@

wiki: logo-inverted.svg
	inkscape $< --export-png=logo-wiki.png -w 100 -h 100 -y 0.0

clean:
	rm -f $(PDF)
