JOBNAME = Enrique_Zetina
SRC     = resume.tex

.PHONY: all clean open

all: $(JOBNAME).pdf

$(JOBNAME).pdf: $(SRC)
	pdflatex -jobname="$(JOBNAME)" $(SRC)
	pdflatex -jobname="$(JOBNAME)" $(SRC)

clean:
	rm -f $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out \
	      $(JOBNAME).fls $(JOBNAME).fdb_latexmk $(JOBNAME).synctex.gz

open: $(JOBNAME).pdf
	open $(JOBNAME).pdf
