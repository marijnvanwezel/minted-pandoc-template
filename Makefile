PANDOC=pandoc
LATEXMK=latexmk

OUTPUT_DIR=temp
REPORT_NAME=report
REPORT_SOURCE=$(REPORT_NAME).md
REPORT_TEX=$(REPORT_NAME).tex
REPORT_TARGET=$(REPORT_NAME).pdf

PANDOC_ARGS=-s --citeproc --listings --template=template.tex --filter=pandoc-latex-environment --lua-filter=minted.lua -o $(REPORT_TEX) $(REPORT_SOURCE)
LATEXMK_ARGS=-pdf -shell-escape -jobname=$(REPORT_NAME) -outdir=$(OUTPUT_DIR) $(REPORT_NAME)

$(REPORT_TARGET): $(OUTPUT_DIR)/$(REPORT_TEX)
	$(LATEXMK) $(LATEXMK_ARGS)
	mv $(OUTPUT_DIR)/$(REPORT_TARGET) $(REPORT_TARGET)

$(OUTPUT_DIR)/$(REPORT_TEX): $(REPORT_SOURCE)
	$(PANDOC) $(PANDOC_ARGS)

watch:
	make $(REPORT_TARGET)
	open $(REPORT_TARGET)
	echo $(REPORT_SOURCE) | entr make $(REPORT_TARGET)

clean:
	rm -r $(OUTPUT_DIR) $(REPORT_TARGET) $(REPORT_TEX)

.PHONY: watch clean
