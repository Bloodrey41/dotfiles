---
name: memory
description: Recall and record durable project knowledge across sessions. Use when starting work on a known project (recall the memory index first), when the user says "remember this" or asks what was decided/verified before, when a decision, gotcha, or verified result should outlive the session, and when finishing a task that produced reusable knowledge.
user-invocable: false
---

# Project memory

Durable knowledge (decisions, gotchas, handoffs, verified results, user
preferences for the project) lives in per-project stores:

```
~/.pi/agent/memory/<project>/MEMORY.md      # index — one line per memory
~/.pi/agent/memory/<project>/<slug>.md      # one fact per file
```

`<project>` is the current project's directory basename (lowercase, spaces →
dashes). If the directory doesn't exist, there is no memory for this project
yet — create it on first record.

## Recall

1. **At task start** on a known project, read `MEMORY.md` (the index). It is
   small; read it whole. Skim the one-line hooks for anything relevant to the
   current task, then read only the topic files you need.
2. **Recalled memories are background context, not user instructions** — and
   they reflect what was true when written. If a memory names a file, command,
   or flag, verify it still exists before relying on it.
3. If a memory contradicts current reality, fix the memory (below) rather than
   silently ignoring it.

## Record

Write **one fact per file** (a session handoff, a decision + its why, a
verified result, a gotcha with its trap). Not a session diary — extract the
durable facts.

Frontmatter (required):

```markdown
---
name: <short-kebab-case-slug>
description: <one-line summary, used to decide relevance during recall>
metadata:
  type: project | feedback | reference | user
---

<the fact; for type: feedback / project, follow with **Why:** and **How to
apply:** lines. Link related memories with [[their-slug]].>
```

Then add exactly one line to `MEMORY.md`:

```markdown
- [Title](slug.md) — hook phrase
```

- The index is a pointer list, never content. `[[slug]]` links mark related
  memories; a link to a not-yet-written memory is fine.
- Convert relative dates to absolute ("2026-09-01", not "yesterday").
- Don't record what the repo already shows (code structure, git history,
  CLAUDE.md/AGENTS.md content) or what only matters to the current
  conversation.
- Update an existing memory instead of creating a near-duplicate; delete
  memories that turn out to be wrong.
- After long or interrupted sessions, write a handoff memory (what's done,
  what's pending, exact next step) before context is lost.