# Global Claude Preferences

## Git Workflow

**IMPORTANT: Never automatically open PRs and merge. Always wait for explicit user request.**

Use trunk-based development with shallow feature branches. When asked to commit:
1. Stash any uncommitted changes
2. Checkout main and pull latest
3. Create a new feature branch
4. Apply stashed changes
5. Commit

When merging PRs:
- Never use `--admin` flag to bypass branch protection
- If a PR isn't mergeable due to checks, wait a few minutes and retry

## Testing

- Always write tests for implementation changes
- If code coverage reporting is available, strive for reasonable coverage but don't obsess over hitting 100%
- When writing tests, only mock minimally. For example, you can mock out a database connection, or an external API, or the current time, or randomness. Do not mock implementation.

## Infrastructure

- When running infrastructure locally, prefer Docker containers where possible

## QA

- Use the agent-browser skill and CLI whenever you need to QA a website or webapp we're working on

## TypeScript

- Avoid `any` types; prefer specific types over `unknown` when possible
- Always assume TypeScript strict mode

## Maintenance

- When removing dead code, first check for an npm run script that removes dead code (likely using knip) and use that. Otherwise, use the knip skill to do it.
