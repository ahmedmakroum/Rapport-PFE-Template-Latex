# Guide d'installation LaTeX pour Windows

## Installation de LaTeX

### Option 1: MiKTeX (Recommandé pour Windows)

1. **Téléchargement**
   - Visitez : https://miktex.org/download
   - Téléchargez MiKTeX pour Windows
   - Choisissez la version "Basic MiKTeX Installer"

2. **Installation**
   - Exécutez l'installateur en tant qu'administrateur
   - Suivez les instructions d'installation
   - Choisissez "Install packages on-the-fly: Yes" pour une installation automatique des packages

3. **Vérification**
   ```powershell
   pdflatex --version
   ```

### Option 2: TeX Live

1. **Téléchargement**
   - Visitez : https://www.tug.org/texlive/acquire-netinstall.html
   - Téléchargez l'installateur réseau

2. **Installation**
   - Exécutez install-tl-windows.exe
   - Suivez les instructions (installation complète recommandée)

### Option 3: Installation portable avec Chocolatey

Si vous avez Chocolatey installé :
```powershell
choco install miktex
```

## Installation des packages requis

Après l'installation de base, vous devrez peut-être installer des packages supplémentaires :

```powershell
# Ouvrez MiKTeX Console ou utilisez la ligne de commande
mpm --install=babel-french
mpm --install=polyglossia
mpm --install=pgfgantt
mpm --install=listings
mpm --install=booktabs
mpm --install=longtable
mpm --install=multirow
mpm --install=subcaption
```

## Configuration VS Code (Optionnel)

### Installation de l'extension LaTeX Workshop

1. Ouvrez VS Code
2. Allez dans Extensions (Ctrl+Shift+X)
3. Recherchez "LaTeX Workshop"
4. Installez l'extension de James Yu

### Extensions recommandées

- **LaTeX Workshop** : Compilation et prévisualisation
- **LTeX** : Correcteur grammatical et orthographique
- **Code Spell Checker** : Vérification orthographique
- **French - Code Spell Checker** : Dictionnaire français

## Test d'installation

Après l'installation, testez avec notre document :

```powershell
cd "c:\PFE\Rapport Latex"
.\compile.ps1 quick
```

## Résolution des problèmes courants

### Erreur : "pdflatex not found"
- Vérifiez que LaTeX est installé
- Redémarrez votre terminal/VS Code
- Vérifiez que le PATH inclut le répertoire LaTeX

### Erreur : "Package not found"
- Ouvrez MiKTeX Console
- Allez dans "Packages"
- Recherchez et installez le package manquant
- Ou activez l'installation automatique

### Erreur de compilation
- Vérifiez les logs dans le fichier .log
- Recherchez les lignes commençant par "!"
- Corrigez les erreurs de syntaxe

### Problèmes d'encodage
- Assurez-vous que vos fichiers sont en UTF-8
- Dans VS Code : "File > Save with Encoding > UTF-8"

## Compilation du document

Une fois LaTeX installé :

### Compilation complète
```powershell
.\compile.ps1 compile
```

### Compilation rapide
```powershell
.\compile.ps1 quick
```

### Mode surveillance
```powershell
.\compile.ps1 watch
```

### Nettoyage
```powershell
.\compile.ps1 clean
```

## Outils alternatifs

### Overleaf (En ligne)
- https://www.overleaf.com/
- Éditeur LaTeX en ligne
- Collaboration en temps réel
- Pas besoin d'installation locale

### TeXstudio
- Éditeur LaTeX dédié
- Interface utilisateur conviviale
- Correction orthographique intégrée

## Ressources d'aide

- **Documentation LaTeX** : https://www.latex-project.org/help/documentation/
- **FAQ MiKTeX** : https://miktex.org/faq
- **Communauté** : https://tex.stackexchange.com/
- **Tutoriels** : https://www.overleaf.com/learn

## Contact

Si vous rencontrez des problèmes d'installation, consultez :
1. La documentation officielle de MiKTeX
2. Les forums de la communauté LaTeX
3. La documentation de votre distribution LaTeX
