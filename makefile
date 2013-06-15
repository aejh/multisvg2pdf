
#OSX - replace this with /usr/bin/inkscape on Linux
INKSCAPE:=/Applications/Inkscape.app/Contents/Resources/bin/inkscape

SVG_PAGES := $(wildcard  *.svg)
PDF_PAGES := $(SVG_PAGES:%.svg=%.pdf)

.PHONY: clean document

document: $(PDF_PAGES)
	@echo Combining $(PDF_PAGES) into $@.pdf
	@pdftk $(PDF_PAGES) cat output $@.pdf

%.pdf: %.svg 
	@echo Making $@
	@$(INKSCAPE) -z -C --file=$< --export-pdf=$@  2>/dev/null

clean:
	@rm -f *.pdf
