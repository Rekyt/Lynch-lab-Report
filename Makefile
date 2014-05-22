# Makefile for report

.PHONY: all clean

all: PNASTMPL.pdf

PNASTMPL.pdf: PNASTMPL.tex
	pdflatex $<

clean:
	echo "Removing .log files..."
	rm *.log
	echo "Removing .aux files..."
	rm *.aux
