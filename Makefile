TEX=pdflatex
BUILD=build

SRC=main.tex
OUT=$(BUILD)/main.pdf
CONTENT=$(wildcard content/*.tex)

RELEASE=$(BUILD)/SchottJordanResume$(shell date +%Y-%m).pdf

all: $(OUT)

$(BUILD):
	mkdir -p $(BUILD)

$(OUT): $(SRC) $(CONTENT) | $(BUILD)
	$(TEX) -output-directory=$(BUILD) $(SRC)
	$(TEX) -output-directory=$(BUILD) $(SRC)

clean:
	rm -rf $(BUILD)

publish: $(OUT)
	cp $(OUT) $(RELEASE)

.PHONY: all clean publish
