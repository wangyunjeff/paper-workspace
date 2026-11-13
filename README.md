# Paper workspace

One copy of the text, thin journal shells, frozen snapshots.

See [PLAN.md](PLAN.md) for the full layout and rules.

```
inputs/        yours; the AI only reads (references, feedback, images, notes)
paper/         the one copy of the text (sections, figures, tables, refs.bib)
journals/      thin shells: draft/ and one folder per journal (template + main.tex)
submissions/   frozen, never edited: YYYY-MM-DD_<who>_<what>/
```

Build: `latexmk` rebuilds what changed; `latexmk <file>` builds one unit.
