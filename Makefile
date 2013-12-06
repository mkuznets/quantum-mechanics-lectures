.PHONY: book chapter clean distclean check-env
MAINSRC = main.tex

book: $(MAINSRC)
	pdflatex $(MAINSRC)

chapter: check-env
	pdflatex "\newcommand{\n}{$(CH)}\input{achapter}"

clean:
	@rm -f */*.aux */*.bbl */*.blg */*.log */*.dvi \
	*/*.idx */*.ilg */*.ind */*.toc */*.lot */*.lof */*.out
	@rm -f *.aux *.bbl *.blg *.synctex *.log *.dvi \
	*.idx *.ilg *.ind *.toc *.lot *.lof *.out
	
distclean: clean
	@rm -f *.pdf

check-env:
ifndef CH
	$(error You must provide a number of chapter: `make chapter CH=N')
endif