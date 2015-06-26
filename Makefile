all: pdf clean 

arq=apresentacao

pdf:	${arq}.tex ${arq}.bib
	pdflatex ${arq}
	- bibtex ${arq}
	pdflatex ${arq}
	pdflatex ${arq}

clean:
	@rm -f ${arq}.aux ${arq}.bbl ${arq}.blg ${arq}.dvi ${arq}.log ${arq}.nav ${arq}.out ${arq}.snm ${arq}.toc ${arq}.vrb
	find . -regextype posix-awk -regex '^.*\.(aux|bbl|blg|dvi|log|nav|out|snm|toc|vrb)'

see: ${arq}.pdf
	xdg-open ${arq}.pdf

and see: all see
