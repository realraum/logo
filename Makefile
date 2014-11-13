SPDF := plakat.pdf sticker.pdf

all: $(SPDF)

$(SPDF): %.pdf: %.svg
	inkscape $< --export-pdf=$@

clean:
	rm -f $(SPDF)
