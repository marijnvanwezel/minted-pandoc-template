REPORT_NAME=report
REPORT_TARGET=$(REPORT_NAME).pdf
REPORT_SOURCE=$(REPORT_NAME).md
REPORT_TEX=$(REPORT_NAME).tex

PANDOC_CITEPROC_NEW=--citeproc
PANDOC_CITEPROC_OLD=--filter=pandoc-citeproc
PANDOC_SHARED_ARGS=-s --no-highlight --template=koi.tex --lua-filter=minted.lua -o $(REPORT_TEX) $(REPORT_SOURCE)

$(REPORT_TARGET): $(REPORT_TEX)
	latexmk -pdf -shell-escape -jobname=report $(REPORT_NAME)

$(REPORT_TEX): $(REPORT_SOURCE)
	pandoc $(PANDOC_CITEPROC_NEW) $(PANDOC_SHARED_ARGS) || \
		pandoc $(PANDOC_CITEPROC_OLD) $(PANDOC_SHARED_ARGS)

watch:
	make && xdg-open $(REPORT_TARGET) && echo $(REPORT_SOURCE) | entr make $(REPORT_TARGET)

clean:
	rm -f $(REPORT_TARGET)

.PHONY: watch clean
