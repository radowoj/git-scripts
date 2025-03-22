# Radowoj's Git Scripts

Lazy person's shortcuts for streamlining git-flow-ish workflow.

## Installation

1. Clone the repository
2. In the directory where the repository was cloned, run `make`

## Scripts

### git from

Usage: `git from [source branch] [target branch]`

Creates `[target branch]` based on the current version of `[source branch]`.

### git flush

An alias for `git push --force-with-lease --force-if-includes`

Usage: `git flush`