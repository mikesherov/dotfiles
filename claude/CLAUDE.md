# Global Claude Preferences

## Git Workflow

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

## Infrastructure

- When running infrastructure locally, prefer Docker containers where possible

## QA

- Use the agent-browser skill and CLI whenever you need to QA a website or webapp we're working on
