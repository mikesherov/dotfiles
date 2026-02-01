---
name: react-gauntlet
description: DO NOT auto-load this skill. Only invoke when the user explicitly requests /react-gauntlet.
user_invokable: true
---

# React Gauntlet

Comprehensive review of React code for accessibility and performance best practices.

## Setup

Load these skills before starting the review:

1. **accessibility** — WCAG 2.1 AA compliance checks
2. **vercel-react-best-practices** — React/Next.js performance optimization rules

## Review Process

1. Identify the scope — the user may specify files, directories, or components to review. If not specified, find all JSX/TSX files in the codebase.
2. Load the **accessibility** skill and review the code against its checklist and critical rules.
3. Load the **vercel-react-best-practices** skill and review the code against its rule categories, prioritized by impact (waterfalls and bundle size first).
4. Report findings grouped by file, with each issue referencing the specific rule or WCAG criterion violated.
5. For each finding, include:
   - The file and line
   - The rule or criterion
   - A brief explanation of the issue
   - A suggested fix

## Output Format

```
## <file path>

### Accessibility
- **[WCAG X.X.X]** <issue> (line N) — <suggested fix>

### Performance
- **[rule-name]** <issue> (line N) — <suggested fix>
```

If a file has no issues, omit it from the report.
