report.pdf: report.tex 
	pdflatex report


report.tex: report.ipynb
	@ipython nbconvert --to latex report.ipynb

.PHONY: all clean

all: report.pdf

clean:
	rm -f *csv *png *aux *log *png table.tex *pytxcode *pdf