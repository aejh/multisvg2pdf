
SVG_PAGES := $(wildcard  *.svg)
PDF_PAGES := $(SVG_PAGES:%.svg=%.pdf)

.PHONY: clean document

document: $(PDF_PAGES)
	@echo Combining $< into $@.pdf
	@pdftk $< cat output $@.pdf

%.pdf: %.svg 
	@echo Making $@
	@inkscape -z -C --file=$< --export-pdf=$@ 2>/dev/null

clean:
	@rm -f *.pdf
