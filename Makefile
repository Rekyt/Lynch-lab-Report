# Makefile for report

.PHONY: all clean

all: plos_template.pdf

plos_template.pdf: plos_template.tex
	@pdflatex $<
	#@bibtex $<
	@pdflatex $<
	#@pdflatex $<

plos_template.tex: Introduction.tex Materials.tex Results.tex Perspectives.tex
	touch $@
clean:
	@echo "Removing .log files..."
	@rm *.log
	@echo "Removing .aux files..."
	@rm *.aux
