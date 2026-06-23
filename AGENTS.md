# AGENTS.md — ainews

AI/business article curation repo. Monthly snapshots from Reddit, X/Twitter, and FIRE communities.

## Structure

```
articles/{reddit,x,fire}/{YYYY-MM}/NN-slug.md   # article markdown
business-articles-{reddit,x,fire}.md             # monthly index tables
add-monthly-articles.sh                          # helper for adding new month
```

Each article source has:
- A root index file (`business-articles-*.md`) with a markdown table per month, linking to local articles
- Per-article markdown under `articles/{source}/{YYYY-MM}/`

## Conventions

- **10 articles per source per month** — keep the count consistent.
- Article filenames: `NN-slug.md` (NN = 01-10, zero-padded).
- Index tables use format: `| # | Title | Source | Summary | [📄](path) |`
- New months go chronologically at the top of the index (newest first).
- Placeholder rows for missing months: `*（待补充）*`.

## Adding a new month

```bash
bash add-monthly-articles.sh 2026 7
```

Then populate the index tables and create `articles/{source}/2026-07/NN-slug.md` files. Commit with message: `add 2026-07 business articles`.

## Git

- Commits prefixed by action: `add:`, `fix:`, `update:`.
- Article additions: `git add business-articles-{source}.md articles/{source}/2026-07/`.
- No linter, no tests, no build step.
