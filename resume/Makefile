TEX=pdflatex
BUILD=build

SRC=main.tex
CONTENT=$(wildcard content/*.tex)

OUT = $(BUILD)/main.pdf
RESUME=$(BUILD)/SchottJordanResume$(shell date +%Y-%m).pdf
PUBLISH?=$(BUILD)/resume-latest.pdf

all: $(RESUME)

$(BUILD):
	mkdir -p $(BUILD)

$(RESUME): $(SRC) $(CONTENT) | $(BUILD)
	$(TEX) -output-directory=$(BUILD) $(SRC)
	$(TEX) -output-directory=$(BUILD) $(SRC)
	mv $(OUT) $@

publish: $(RESUME)
	cp $< $(PUBLISH)

clean:
	rm -rf $(BUILD)

.PHONY: all clean publish
