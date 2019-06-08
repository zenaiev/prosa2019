#!/bin/bash
filename= "prosa2019"

default:
	pdflatex ${filename}
	bibtex   ${filename}
	pdflatex ${filename}
	pdflatex ${filename}

clean:
	rm -rf *~ *.out *.toc *.log ${filename}.pdf *.aux *.blg *.bbl
