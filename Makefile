.PHONY: book chapter check-env
MAINSRC = main.tex

book: $(MAINSRC)
	latexmk $(MAINSRC)

chapter: check-env
	pdflatex "\newcommand{\n}{$(CH)}\input{chapter}"

.PHONY: softclean
softclean: clean

.PHONY: clean
clean: softclean
	latexmk -c

.PHONY: distclean
distclean:
	latexmk -C

readme:
	pandoc --email-obfuscation=none --normalize -s -S \
		--from markdown_github --to html README.md > README.htm

check-env:
ifndef CH
	$(error You must provide a number of chapter: `make chapter CH=N')
endif
