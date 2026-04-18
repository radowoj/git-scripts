# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A collection of bash shell scripts providing shortcuts for git-flow-style workflows. Scripts are installed to `~/.local/bin/` so git discovers them as subcommands (e.g., `git from`, `git flush`).

## Installation

Run `make` — this copies scripts to `~/.local/bin/` and sets up the bash prompt.

## Scripts

- **git-from**: Creates a new branch from a source branch. Stashes current work, switches to source, pulls latest, then creates the new branch. Usage: `git from <source> <new-branch>`
- **git-flush**: Shortcut for `git push --force-with-lease --force-if-includes`
- **.bash_git_branch**: Bash prompt customization that shows the current git branch

## Architecture

Scripts follow the git subcommand convention: an executable named `git-foo` in PATH becomes `git foo`. Each script is a standalone bash script with no dependencies beyond git and standard Unix tools. The Makefile handles installation by copying scripts and setting permissions.
