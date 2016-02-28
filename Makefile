.PHONY: book chapter clean distclean check-env
MAINSRC = main.tex

book: $(MAINSRC)
	latexmk -pdf -pdflatex="pdflatex -halt-on-error" $(MAINSRC)

chapter: check-env
	pdflatex "\newcommand{\n}{$(CH)}\input{chapter}"

softclean:
	rm -rf figures/luatex*
	find -iregex '.*\.\(bbl\|bcf\|blg\|aux\|log\|lof\|loc\|lot\|loa\|out\|toc\|dvi\|fdb_latexmk\|run\.xml\|htm\|fls\)$$' -type f -delete

clean: softclean
	find -iregex '.*\.\(synctex\|idx\|ilg\|ind\)$$' -type f -delete
	
distclean: clean
	find . -name "*.pdf" -type f -delete

readme:
	pandoc --email-obfuscation=none --normalize -s -S \
		--from markdown_github --to html README.md > README.htm

check-env:
ifndef CH
	$(error You must provide a number of chapter: `make chapter CH=N')
endif