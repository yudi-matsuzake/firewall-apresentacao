all: pdf clean

arq=apresentacao

pdf:	${arq}.tex ${arq}.bib
	pdflatex ${arq}
	- bibtex ${arq}
	pdflatex ${arq}
	pdflatex ${arq}

clean:
	@rm -f ${arq}.aux ${arq}.bbl ${arq}.blg ${arq}.dvi ${arq}.log ${arq}.nav ${arq}.out ${arq}.snm ${arq}.toc ${arq}.vrb

see: ${arq}.pdf
	xdg-open ${arq}.pdf

and see: all see
