MAINSRC = main.tex

.PHONY: book
book:
	latexmk $(MAINSRC)

.PHONY: chapter
chapter:
ifndef CH
	$(error You must provide a number of chapter: 'make chapter CH=N')
endif
	latexmk  \
		-jobname=chapter \
		-pdflatex="pdflatex -halt-on-error %O '\newcommand{\n}{$(CH)}\input{%S}'" \
		$(MAINSRC)

.PHONY: softclean
softclean: clean

.PHONY: clean
clean: softclean
	latexmk -c $(MAINSRC)
	latexmk -jobname=chapter -c $(MAINSRC)

.PHONY: distclean
distclean:
	latexmk -C $(MAINSRC)
	latexmk -jobname=chapter -C $(MAINSRC)

readme:
	pandoc --email-obfuscation=none --normalize -s -S \
		--from markdown_github --to html README.md > README.htm
