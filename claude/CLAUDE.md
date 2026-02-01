# Global Claude Preferences

## Git Workflow

**IMPORTANT: Always wait for explicit requests to open pull requests, never open them on your own.**

Use trunk-based development with shallow feature branches. When asked to commit:
1. Stash any uncommitted changes
2. Checkout main and pull latest
3. Create a new feature branch
4. Apply stashed changes
5. Commit

When merging PRs:
- Never use `--admin` flag to bypass branch protection
- If a PR isn't mergeable due to checks, wait a few minutes and retry

## Infrastructure

- When running infrastructure locally, prefer Docker containers where possible

## Coding

- Try to consolidate implementation. A bit of duplication is ok, but don't be messy.
- When working with APIs and data models, make sure you have a complete understanding of the APIs and how they work before starting.
- Keep things simple. The simplest thing that will work is always a good starting point.

## Skills

- Load the **testing** skill when writing or running tests
- Load the **qa** skill when QA'ing websites
- Load the **live-demos** skill when giving live demos
- Load the **typescript** skill when writing TypeScript
- Load the **react** skill when writing React/JSX
- Load the **maintenance** skill when cleaning up dead code
