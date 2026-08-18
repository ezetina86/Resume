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

The active resume is `resume.tex` — a single-file LaTeX document using the `article` class (single-column, ATS-native, 11pt, letterpaper). Output is always `Enrique_Zetina.pdf`. It is deliberately ATS-optimized: standard section headings, plain-text contact line (no icons), inline dates, single column. Verify text extraction after edits (see below). The old `moderncv` version is archived at `legacy/resume-moderncv.tex`.

### Section order
1. **Summary** — 3-sentence positioning statement; must stay consistent with cert count, years of experience, and named outcomes in the body
2. **Professional Experience** — reverse chronological; all bullets follow the XYZ results-driven formula with `\textasciitilde{}X\%` for approximated metrics. Each entry: `\job{Title}{EPAM Systems, Inc. --- Client}{Dates}` followed by an `itemize`
3. **Projects** — volunteer and personal projects with live URLs (also use `\job{...}`)
4. **Education**
5. **Technical Skills** — grouped by domain via `\row{Label}{...}`, ordered by 2026 market relevance (AI first)
6. **Certifications** — grouped by provider via `\row{Provider}{...}` with Credly/credential.net hyperlinks

### Key content facts (keep in sync when editing)
- **Certifications**: 13 total (7 Google Cloud, 2 AWS, 1 Azure, 1 HashiCorp, 1 Astronomer, 1 Anthropic)
- **Years of experience**: 7 (Apr 2019 → present)
- **Notable metrics**: 500+ Cloud Run services (P&G), 15M+ clients (RBC), 50M+ queries/month (AutoZone)
- **Cert count in Value Proposition**: update if a new certification is added

### Styling
- Font: `tgheros` (TeX Gyre Heros sans) — chosen because it extracts "EPAM" cleanly; `helvet` splits it to "EP AM" in ATS parsers
- Custom color: `darkteal` (`#008080`) applied to the name and section headings only (color is style, never the sole carrier of information)
- Page margins: `0.6in` via `geometry` package
- Approximated percentages use `\textasciitilde{}X\%` (renders `~40%`, extracts cleanly; do not use `$\sim$` — it drops the leading space in extraction)
- Em dashes use `---` (LaTeX triple dash)
- Target length: 3 pages. Spacing (`\job` vspace, `\setlist` itemsep, `\titlespacing`) is tuned to avoid orphan lines — re-check page count after content edits

### ATS verification
After editing, confirm the machine-readable text is correct:
```bash
python3 -c "from pypdf import PdfReader; print(''.join(p.extract_text() for p in PdfReader('Enrique_Zetina.pdf').pages))"
```
Check: "EPAM Systems" (not "EP AM"), dates adjacent to titles, no glued tildes, correct reading order.

### External data source
Certifications are kept in sync with the portfolio site at `localhost:4321`, sourced from `/Users/Enrique_Zetina/Documents/Portfolio/src/data/certifications.js`. When adding or updating certifications, read that file for the correct Credly URLs.

## Repository layout
- `resume.tex` — active resume source
- `Makefile` — build, clean, open targets
- `img/` — profile photo and personal logo
- `legacy/` — archived older versions (`twentysecondcv`, `moderncv` templates); not maintained
