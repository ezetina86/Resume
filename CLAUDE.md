# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

```bash
make          # compile resume.tex → Enrique_Zetina.pdf (runs pdflatex twice)
make clean    # remove auxiliary files (.aux, .log, .out, etc.), keeps PDF
make open     # open the PDF in the default viewer (macOS)
```

Manual compile without Make:
```bash
pdflatex -jobname="Enrique_Zetina" resume.tex
```

## Resume Structure

The active resume is `resume.tex` — a single-file LaTeX document using the `moderncv` package (casual style, 11pt, A4). Output is always `Enrique_Zetina.pdf`.

### Section order
1. **Value Proposition** — 3-sentence positioning statement; must stay consistent with cert count, years of experience, and named outcomes in the body
2. **Professional Experience** — reverse chronological; all bullets follow the XYZ results-driven formula with `$\sim$X\%` for approximated metrics
3. **Projects** — volunteer and personal projects with live URLs
4. **Education**
5. **Areas of Expertise** — grouped by domain, ordered by 2026 market relevance (AI first)
6. **Certifications** — grouped by provider with Credly/credential.net hyperlinks

### Key content facts (keep in sync when editing)
- **Certifications**: 13 total (7 Google Cloud, 2 AWS, 1 Azure, 1 HashiCorp, 1 Astronomer, 1 Anthropic)
- **Years of experience**: 7 (Apr 2019 → present)
- **Notable metrics**: 500+ Cloud Run services (P&G), 15M+ clients (RBC), 50M+ queries/month (AutoZone)
- **Cert count in Value Proposition**: update if a new certification is added

### Styling
- Custom color: `darkteal` (`#008080`) applied via `color1`/`color2`
- Page margins: 85% scale via `geometry` package
- Approximated percentages use `$\sim$X\%` syntax (e.g., `$\sim$40\%`)
- Em dashes use `---` (LaTeX triple dash)

### External data source
Certifications are kept in sync with the portfolio site at `localhost:4321`, sourced from `/Users/Enrique_Zetina/Documents/Portfolio/src/data/certifications.js`. When adding or updating certifications, read that file for the correct Credly URLs.

## Repository layout
- `resume.tex` — active resume source
- `Makefile` — build, clean, open targets
- `img/` — profile photo and personal logo
- `legacy/` — archived older versions (`twentysecondcv`, `moderncv` templates); not maintained
