# Paper workspace plan

**One copy of the text, thin journal shells, frozen snapshots.**

## inputs/ — yours, AI only reads
- `references/` paper PDFs
- `feedback/` teacher and reviewer comments
- `images/` raw drawings, photos
- `notes/` your instructions

## paper/ — the one copy of the text
- `sections/` one file per section
- `figures/` each compiles alone
- `tables/` each compiles alone
- `refs.bib` the only bibliography

## journals/ — thin shells
- `draft/` everyday plain layout
- `<journal>/` template + `main.tex`
- A same-named file overrides one section
- Never a copy of the text

## submissions/ — frozen, never edited
`2026-12-01_advisor_draft1/` contains:
- `manuscript.pdf` exactly what was sent
- `source/` flat LaTeX, ready to upload
- `NOTE.md` who, what, which commit

## Two kinds of version
- Different journals -> folders side by side in `journals/`
- Revisions -> history: snapshot + Git tag each time
- Never files like `main_v3_final.tex`

## Compiling
- `latexmk` rebuilds what changed
- `latexmk <file>` builds one unit only
- Editor: open the file, press Build
- No path settings on your computer

## Git (the AI runs it)
- commit = a save point
- tag = milestone, named like its snapshot
- branch = trial rewrite you approve
