---
name: testing
description: Guidelines for writing and running tests, including mocking strategies and code coverage expectations.
---

# Testing

- Always write tests for implementation changes
- If code coverage reporting is available, strive for reasonable coverage but don't obsess over hitting 100%
- When writing tests, only mock minimally. For example, you can mock out a database connection, or an external API, or the current time, or randomness. Do not mock implementation.
