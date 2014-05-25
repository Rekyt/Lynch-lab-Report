# Makefile for report

.PHONY: all clean

all: plos_template.pdf

plos_template.pdf: plos_template.tex
	@pdflatex $<
	@bibtex $<
	@pdflatex $<
	@pdflatex $<

plos_template.tex: Introduction.tex Challenges.tex Results.tex Pipeline.tex Perspectives.tex
	touch $@
clean:
	@echo "Removing .log files..."
	@rm *.log
	@echo "Removing .aux files..."
	@rm *.aux
