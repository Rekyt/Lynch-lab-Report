# Makefile for report

.PHONY: all clean

all: plos_template.pdf

plos_template.pdf: plos_template.tex
	@pdflatex $<
	@bibtex $(patsubst %.tex, %.aux, $<)
	@pdflatex $<
	@pdflatex $<

plos_template.tex: Introduction.tex Abstract.tex Materials.tex Results.tex Perspectives.tex $(shell ls Figures/*.png) $(shell ls Figures/*.pdf)
	touch $@
clean:
	@echo "Removing .log files..."
	@rm *.log
	@echo "Removing .aux files..."
	@rm *.aux
	@rm *.blg *.bbl *.out
