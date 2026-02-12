# Global Claude Preferences

## Git Workflow

**IMPORTANT: Always wait for explicit requests to open pull requests, never open them on your own.**

Changes must be branched off of latest main.

When merging PRs:
- Never use `--admin` flag to bypass branch protection
- Use the `--auto` flag of `gh pr merge` to merge PRs

## Testing

- Always write tests for implementation changes
- If code coverage reporting is available, strive for reasonable coverage but don't obsess over hitting 100%
- When writing tests, only mock minimally. For example, you can mock out a database connection, or an external API, or the current time, or randomness. Do not mock implementation.
- After fixing production code, always check that test mocks still match the new call signatures/order
- When tests use mock expectations based on call order, update them when refactoring the underlying code
- Prefer data-testid selectors over text matching to avoid brittle tests

## Infrastructure

- When running infrastructure locally, prefer Docker containers where possible

## QA

Load the **qa** skill when QA'ing websites.

## Live Demos

Load the **live-demos** skill when giving live demos.

## Coding

- Try to consolidate implementation. A bit of duplication is ok, but don't be messy.
- When working with APIs and data models, make sure you have a complete understanding of the APIs and how they work before starting.
- Keep things simple. The simplest thing that will work is always a good starting point.

## TypeScript

- Avoid `any` types; prefer specific types over `unknown` when possible
- Always assume TypeScript strict mode

## React

- When writing tests with React Testing Library, prefer `data-testid` selectors over brittle selectors like tag names, class names, or DOM structure.

## Database

### Query Optimization
- When optimizing database queries, benchmark before and after — initial attempts may make performance worse (e.g., O(N²) data duplication)
- Prefer adding indexes and restructuring queries over consolidating multiple queries into one complex query
- Target: no queries over 1000ms

## Maintenance

- When removing dead code, first check for an npm run script that removes dead code (likely using knip) and use that. Otherwise, use the knip skill to do it.
