.PHONY: all pdf png clean

TYP_SRCS := $(wildcard *.typ)
PDFS := $(TYP_SRCS:.typ=.pdf)
PNGS := $(TYP_SRCS:.typ=.png)
PDF_DEPS := $(PDFS:.pdf=.pdf.d)
PNG_DEPS := $(PNGS:.png=.png.d)

all: pdf png

pdf: $(PDFS)

png: $(PNGS)

%.pdf: %.typ
	typst compile --pages 1 --deps $(@:.pdf=.pdf.d) --deps-format make $< $@

%.png: %.typ
	typst compile --pages 1 --format png --deps $(@:.png=.png.d) --deps-format make $< $@

clean:
	rm -f $(PDFS) $(PNGS) $(PDF_DEPS) $(PNG_DEPS)

# -include $(PDF_DEPS) $(PNG_DEPS)
