---
name: react-gauntlet
description: Review React code for WCAG 2.1 AA accessibility compliance and Vercel performance best practices.
disable-model-invocation: true
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

One line per issue, grouped by file. Omit files with no issues.

```
**<file path>**
- [WCAG X.X.X] <issue> (line N)
- [rule-name] <issue> (line N)
```

After outputting all results, ask the user if they'd like to fix the issues.
