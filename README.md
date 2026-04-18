# Radowoj's Git Scripts

Lazy person's shortcuts for streamlining git-flow-ish workflow.

## Installation

1. Clone the repository
2. Run `make` — this installs scripts to `~/.local/bin/` and sets up the bash prompt

To update after pulling new changes, run `make` again — it will reinstall any scripts that have changed.

## Scripts

### git from

Usage: `git from <source branch> <new branch>`

Creates `<new branch>` based on the current version of `<source branch>`. Automatically stashes uncommitted changes before switching branches and provides guidance on restoring them. On failure, rolls back to the original branch and restores stashed changes.

### git flush

Usage: `git flush`

Shortcut for `git push --force-with-lease --force-if-includes` — a safer alternative to `git push --force`.
