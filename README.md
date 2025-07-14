# Skeleton/Template for PFE Report in Software Engineering

This repository provides a skeleton/template for a PFE (Projet de Fin d'Études) report in Software Engineering. Feel free to use and adapt it for your own project.

For your convenience, a Word document for the cover page (Page de Garde) is included as `Page-Garde-Master (2) (1) (1) (3).docx`. You can modify it as you wish.

To get started with installation, please refer to [INSTALLATION.md](INSTALLATION.md).
# Skeleton/Template for PFE Report in Software Engineering

This repository provides a skeleton/template for a PFE (Projet de Fin d'Études) report in Software Engineering. Feel free to use and adapt it for your own project.

To get started with installation, please refer to [INSTALLATION.md](INSTALLATION.md).

## Compilation du document

Pour compiler le document LaTeX, utilisez les commandes suivantes dans l'ordre :

### Compilation complète
```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Compilation avec latexmk (recommandé)
```bash
latexmk -pdf -pvc main.tex
```

## Structure du projet

- `main.tex` : Fichier principal
- `chapters/` : Dossier contenant les chapitres
- `sections/` : Dossier contenant les sections spéciales
- `images/` : Dossier pour les images et figures
- `references.bib` : Fichier de bibliographie

## Packages requis

Le document utilise les packages suivants :
- inputenc, fontenc, babel : Gestion des encodages et langues
- geometry : Mise en page
- graphicx : Insertion d'images
- hyperref : Liens hypertexte
- listings : Code source
- pgfgantt : Diagrammes de Gantt
- tikz : Dessins vectoriels
- amsmath, amsfonts : Formules mathématiques
- booktabs : Tableaux professionnels

## Personnalisation

Pour personnaliser votre rapport, modifiez les variables dans `main.tex` :
- \titre{} : Titre du projet
- \auteur{} : Votre nom
- \etablissement{} : Nom de votre établissement
- \organisme{} : Organisme d'accueil
- \encadrant{} : Nom de l'encadrant
- \maitre{} : Maître de stage
- \annee{} : Année universitaire

## Ajout de contenu

### Images
Placez vos images dans le dossier `images/` et utilisez :
```latex
\includegraphics[width=0.8\textwidth]{images/nom_image.png}
```

### Tableaux
Utilisez le package `booktabs` pour des tableaux professionnels :
```latex
\begin{table}[H]
    \centering
    \begin{tabular}{|l|c|r|}
        \toprule
        Colonne 1 & Colonne 2 & Colonne 3 \\
        \midrule
        Donnée 1 & Donnée 2 & Donnée 3 \\
        \bottomrule
    \end{tabular}
    \caption{Titre du tableau}
    \label{tab:exemple}
\end{table>
```

### Code source
Utilisez le package `listings` :
```latex
\begin{lstlisting}[language=JavaScript, caption=Exemple de code]
function exemple() {
    console.log("Hello World");
}
\end{lstlisting}
```

## Conseils de rédaction

1. **Cohérence** : Utilisez un style uniforme pour les titres, tableaux et figures
2. **Références** : Ajoutez toujours un label aux figures et tableaux
3. **Bibliographie** : Citez vos sources avec `\cite{clé}`
4. **Révision** : Relisez attentivement pour éviter les erreurs
5. **Sauvegarde** : Sauvegardez régulièrement votre travail

## Dépannage

### Erreurs communes
- **Compilation échouée** : Vérifiez les packages installés
- **Images non trouvées** : Vérifiez le chemin des images
- **Références non résolues** : Compilez avec bibtex
- **Caractères spéciaux** : Utilisez l'encodage UTF-8

### Outils recommandés
- **Éditeur** : VS Code avec extension LaTeX Workshop
- **Distribution** : TeX Live (Windows/Linux) ou MacTeX (macOS)
- **Visualiseur** : PDF intégré ou SumatraPDF

## Ressources utiles

- [Documentation LaTeX](https://www.latex-project.org/help/documentation/)
- [Overleaf](https://www.overleaf.com/learn) : Tutoriels en ligne
- [CTAN](https://ctan.org/) : Archive des packages LaTeX
- [Detexify](http://detexify.kirelabs.org/) : Reconnaissance de symboles
