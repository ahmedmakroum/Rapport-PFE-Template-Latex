# Makefile pour la compilation du rapport LaTeX

# Variables
MAIN = main
LATEX = pdflatex
BIBTEX = bibtex
VIEWER = start

# Fichiers sources
SOURCES = $(MAIN).tex chapters/*.tex sections/*.tex

# Cible par défaut
all: $(MAIN).pdf

# Compilation complète
$(MAIN).pdf: $(SOURCES) references.bib
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Compilation rapide (sans bibliographie)
quick: $(SOURCES)
	$(LATEX) $(MAIN).tex

# Compilation avec latexmk
latexmk:
	latexmk -pdf -pvc $(MAIN).tex

# Nettoyage des fichiers temporaires
clean:
	del /f *.aux *.log *.bbl *.blg *.toc *.out *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz

# Nettoyage complet (y compris le PDF)
cleanall: clean
	del /f $(MAIN).pdf

# Ouverture du PDF
view: $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf

# Compilation en mode watch
watch:
	latexmk -pdf -pvc -interaction=nonstopmode $(MAIN).tex

# Vérification de la syntaxe
check:
	lacheck $(MAIN).tex

# Comptage de mots
wordcount:
	texcount -inc $(MAIN).tex

# Aide
help:
	@echo "Cibles disponibles:"
	@echo "  all       - Compilation complète (défaut)"
	@echo "  quick     - Compilation rapide"
	@echo "  latexmk   - Compilation avec latexmk"
	@echo "  clean     - Nettoyage des fichiers temporaires"
	@echo "  cleanall  - Nettoyage complet"
	@echo "  view      - Ouverture du PDF"
	@echo "  watch     - Compilation en mode watch"
	@echo "  check     - Vérification de la syntaxe"
	@echo "  wordcount - Comptage de mots"
	@echo "  help      - Affichage de cette aide"

.PHONY: all quick latexmk clean cleanall view watch check wordcount help
