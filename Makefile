# ===== Makefile for LaTeX =====
TEX = main.tex
PDF = main.pdf

# Commande principale
all: $(PDF)

$(PDF): $(TEX)
	pdflatex -interaction=nonstopmode -halt-on-error $(TEX)
	pdflatex -interaction=nonstopmode -halt-on-error $(TEX)

# Nettoyer les fichiers temporaires
clean:
	rm -f *.aux *.log *.out *.toc *.synctex* *.fdb_latexmk *.fls *.nav *.snm *.vrb

# Supprimer aussi le PDF
distclean: clean
	rm -f $(PDF)

# Compilation rapide (une seule passe)
quick:
	pdflatex -interaction=nonstopmode $(TEX)
