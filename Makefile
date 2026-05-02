TEX=pdflatex
BUILD=build
SITE=site

SRC=main.tex
CONTENT=$(wildcard content/*.tex)

OUT=$(BUILD)/main.pdf
RESUME=$(BUILD)/SchottJordanResume$(shell date +%Y-%m).pdf
PUBLISH=$(SITE)/resume-latest.pdf

all: $(RESUME)

$(BUILD):
	mkdir -p $(BUILD)

$(RESUME): $(SRC) $(CONTENT) | $(BUILD)
	$(TEX) -output-directory=$(BUILD) $(SRC)
	$(TEX) -output-directory=$(BUILD) $(SRC)
	mv $(OUT) $(RESUME)

clean:
	rm -rf $(BUILD)
	rm $(PUBLISH)

publish: $(RESUME)
	cp $(RESUME) $(PUBLISH)

.PHONY: all clean publish
