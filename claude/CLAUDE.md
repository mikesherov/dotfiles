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

For live demos:
- Start Chrome with: `/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --user-data-dir="/tmp/chrome-debug-$(uuidgen)" --no-first-run`
- Connect agent-browser: `agent-browser connect 9222`
- Use agent-browser commands as normal (they will control the visible Chrome window)
- Use the `say` bash command to explain what the site/feature is to the audience, not for internal thoughts or navigation (e.g., `say "This is the dashboard where users can view their analytics"`)
- Never use `agent-browser screenshot` during live demos (too slow)

## TypeScript

- Avoid `any` types; prefer specific types over `unknown` when possible
- Always assume TypeScript strict mode

## Maintenance

- When removing dead code, first check for an npm run script that removes dead code (likely using knip) and use that. Otherwise, use the knip skill to do it.
