# Change this line to a meaningful name for the document output.
JOBNAME = IDD

$(JOBNAME).pdf: *.tex
		pdflatex -halt-on-error -jobname=$(JOBNAME) main.tex
		makeindex $(JOBNAME)
		pdflatex -halt-on-error -jobname=$(JOBNAME) main.tex
		pdflatex -halt-on-error -jobname=$(JOBNAME) main.tex

.PHONY: clean
clean:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.docx
	rm -f *.pdf
	rm -f *.hst
	rm -f *.ver
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ist
	rm -f *.out
	rm -f *.xml
	rm -f *.toc
	rm -f *.lof
	rm -f *.lot
