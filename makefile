
SVG_PAGES := $(wildcard  *.svg)
PDF_PAGES := $(SVG_PAGES:%.svg=%.pdf)

.PHONY: clean

document.pdf: $(PDF_PAGES)
	@echo Combining $^ into $@
	@pdftk $^ cat output $@

%.pdf: %.svg 
	@echo Making $@
	@inkscape -z -C --file=$< --export-pdf=$@ 2>/dev/null

clean:
	@rm -f *.pdf
