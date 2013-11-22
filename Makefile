MAINSRC = main.tex

.PHONY: book clean distclean

book: $(MAINSRC)
	pdflatex $(MAINSRC)

runge: $(MAINSRC)
	pdflatex runge.tex

chapter:
	pdflatex achapter

clean :
	@rm -f */*.aux */*.bbl */*.blg */*.log */*.dvi \
	*/*.idx */*.ilg */*.ind */*.toc */*.lot */*.lof */*.out
	@rm -f *.aux *.bbl *.blg *.synctex *.log *.dvi \
	*.idx *.ilg *.ind *.toc *.lot *.lof *.out
	
distclean:
	@rm -f *.pdf */*.aux */*.bbl */*.blg */*.log */*.dvi \
	*/*.idx */*.ilg */*.ind */*.toc */*.lot */*.lof */*.out
