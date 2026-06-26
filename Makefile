LATEST=site/resume-latest.pdf

all: $(LATEST)

$(LATEST):
	$(MAKE) -C resume publish PUBLISH=$(abspath $@)

clean:
	$(MAKE) -C resume clean
	rm -f $(LATEST)

.PHONY: all clean
