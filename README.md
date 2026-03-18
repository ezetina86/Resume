# Enrique Zetina — Resume

LaTeX source for Enrique Zetina's resume. Built with [`moderncv`](https://ctan.org/pkg/moderncv) (casual style) and compiled to `Enrique_Zetina.pdf`.

## Prerequisites

A LaTeX distribution is required:
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: [TeX Live](https://www.tug.org/texlive/)
- **Windows**: [MiKTeX](https://miktex.org/)

## Build

```bash
make          # compile → Enrique_Zetina.pdf
make clean    # remove auxiliary files
make open     # open PDF (macOS)
```

Or manually:

```bash
pdflatex -jobname="Enrique_Zetina" resume.tex
pdflatex -jobname="Enrique_Zetina" resume.tex   # run twice for cross-references
```

## Output

[Enrique_Zetina.pdf](Enrique_Zetina.pdf)
