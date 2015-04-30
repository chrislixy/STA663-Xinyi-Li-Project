Scalable_K_means.pdf: Scalable_K_means.tex 
	pdflatex Scalable_K_means


Scalable_K_means.tex: Scalable_K_means.ipynb
	@ipython nbconvert --to latex Scalable_K_means.ipynb

.PHONY: all clean

all: Scalable_K_means.pdf

clean:
	rm -f *csv *png *aux *log *png table.tex *pytxcode *pdf