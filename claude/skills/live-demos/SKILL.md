---
name: live-demos
description: Live demo workflows using Chrome remote debugging and agent-browser for presenting features to an audience.
---

# Live Demos

Load the **qa** skill for general agent-browser usage and bug tracking during demos.

## Setup

- Start Chrome with: `/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --user-data-dir="/tmp/chrome-debug-$(uuidgen)" --no-first-run`
- Connect agent-browser: `agent-browser connect 9222`

## Usage

- Use agent-browser commands as normal (they will control the visible Chrome window)
- Use the `say` bash command to explain what the site/feature is to the audience, not for internal thoughts or navigation (e.g., `say "This is the dashboard where users can view their analytics"`)
