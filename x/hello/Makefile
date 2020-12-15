TARGETS = hello helloc stripped hello.png output.png

.PHONY: all
all: $(TARGETS)

hello: main.go
	go build -o $@ $<

stripped: main.go
	go build -ldflags="-s -w" -o $@ $<

hello.png: hello
	binpic -color -o $@ $<

output.png: hello.png helloc.png
	convert hello.png helloc.png +append -gravity Center -border 16 output.png

helloc: hello.c
	cc -o $@ $<

.PHONY: colored
colored:
	@go tool nm -size hello | awk '{print $$3}' | tr -d '\n' | fold -w 80 | colorchars

.PHONY: clean
clean:
	rm -f $(TARGETS)
