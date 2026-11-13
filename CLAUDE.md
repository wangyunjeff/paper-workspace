# Instructions for the AI

Read PLAN.md first. This is a LaTeX paper workspace: one copy of the text, thin journal shells, frozen snapshots.

## Rules
- `inputs/` is the user's. Read it, never edit, move or delete anything there.
- The text lives only in `paper/`: `sections/` (one file per section), `figures/` and `tables/` (each compiles alone), `refs.bib` (the only bibliography).
- `journals/<name>/` holds only the journal template and a `main.tex` that `\input`s from `paper/`. Never copy section text into a journal folder. To change one section for one journal, add a same-named file in that journal folder.
- `journals/draft/` is the everyday plain layout.
- `submissions/` is frozen: create a new folder, never edit an existing one.
- Never create files like `main_v3_final.tex`. Versions are Git history plus snapshots.

## Snapshots (when the user sends the paper to someone)
1. Run `scripts/snapshot.sh <who> <what>`. It builds the PDF and makes `submissions/YYYY-MM-DD_<who>_<what>/` with `manuscript.pdf`, a flat `source/`, and `NOTE.md`.
2. Fill in `NOTE.md` (who, what, which commit).
3. Commit, then tag with the same name as the snapshot folder.

## Git
- You run Git. Commit = save point, small and described plainly.
- Tag = milestone named like its snapshot.
- Branch = trial rewrite; the user approves before it is merged.
- Do not rewrite history or force-push.

## Building
- `latexmk` rebuilds what changed; `latexmk <file>` builds one unit.
- Do not ask the user to change path settings on their computer.
- Build artifacts are git-ignored; do not commit them.

## Style
- Keep replies short and plain. Say what you changed and where.
