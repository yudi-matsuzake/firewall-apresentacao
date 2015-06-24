all: pdf clean

arq=apresentacao

pdf:	${arq}.tex
	@>${arq}.cout
	latex ${arq} >> ${arq}.cout
	- bibtex ${arq} >> ${arq}.cout
	latex ${arq} >> ${arq}.cout
	latex ${arq} >> ${arq}.cout
	pdflatex ${arq} >> ${arq}.cout 

clean:
	@rm -f ${arq}.aux ${arq}.bbl ${arq}.blg ${arq}.dvi ${arq}.log ${arq}.nav ${arq}.out ${arq}.snm ${arq}.toc ${arq}.vrb
