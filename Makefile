all: thesis.pdf

# pdflatex is used instead of latex and dvipdf because it can handle 
# .jpg and .png images
thesis.pdf: thesis.tex tex/*.tex
	pdflatex thesis.tex
	bibtex thesis.aux
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm *.aux *.log *.toc *.lof *.bbl *.blg
