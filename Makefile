#!/usr/bin/make -f

NAME = gsaponaro_phd_thesis
FRONTMATTER_DIR = 1_frontmatter
MAINMATTER_DIR = 2_mainmatter
FIGURES_DIR = figures

pdf:
	pdflatex $(NAME)
	biber $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *-converted-to.pdf *phd_thesis.pdf *.toc *.run.xml
	cd $(FRONTMATTER_DIR) && rm -f *.aux
	cd $(MAINMATTER_DIR) && rm -f *.aux
	cd $(FIGURES_DIR) && rm -f *-converted-to.pdf
