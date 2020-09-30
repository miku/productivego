SHELL := /bin/bash
TARGETS := Slides.pdf

.PHONY: all
all: $(TARGETS)

%.pdf: %.md
	pandoc --template eisvogel -f markdown -t latex -o $@ $^

.PHONY: clean
clean:
	rm -rf $(TARGETS)
