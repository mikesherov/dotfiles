---
name: qa
description: QA procedures for websites and webapps, including agent-browser usage and bug tracking.
---

# QA

- Use the agent-browser skill and CLI whenever you need to QA a website or webapp we're working on
- When you notice a bug during QA, create a task to fix it
- When fixing a bug, make sure to add a test to prevent regressions
- Avoid using `agent-browser screenshot` during QA (too slow). If `agent-browser snapshot` isn't accurate enough, it is likely an a11y bug, and you should create a task to fix it.
