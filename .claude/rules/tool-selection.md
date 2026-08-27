# Tool selection: Serena · codebase-memory-mcp · Ponytail

Three tools, three layers. Pick by the job, not the habit.

- **Ponytail** — DECIDE what/how much to build (YAGNI ladder, shortest diff). Runs ON TOP, orthogonal. Invoke before new code and during review.
- **codebase-memory-mcp (CBM)** — READ/UNDERSTAND structurally: architecture, multi-hop callers/callees, cross-service, blast-radius, semantic discovery. Read-only graph, best-effort coverage.
- **Serena** — PRECISE symbol operation + MUTATION: rename, safe-delete, replace body, insert, multi-file replace, exact LSP references, diagnostics. LSP ground-truth, per-project. Also project memories.

These three are the general baseline. The full selection rules — including when specialized agents/skills/MCPs are mandatory — live in `working-rules.md`.

## Decision table

| Task pattern | Tool | Why |
|---|---|---|
| Should this exist / how much to build | Ponytail | YAGNI ladder is a decision, not a lookup |
| Review current diff for over-engineering | Ponytail `ponytail-review` | Returns a delete-list, not edits |
| Audit repo for speculative abstractions | Ponytail `ponytail-audit` | Whole-repo scope call |
| Track deferred `ponytail:` shortcuts | Ponytail `ponytail-debt` | Ledger of named ceilings |
| "Is this already in the codebase?" (rung 2 input) | CBM `search_graph` or Serena `find_symbol` | Feed the decision, don't make it |
| Architecture: clusters, layers, hotspots, boundaries, file_tree | CBM `get_architecture` | Whole-repo rollup; Serena has no equivalent |
| Cycles in the call graph | CBM `get_architecture(cycles)` / `query_graph` | Graph-level; Serena has no multi-hop |
| Single-file outline | Serena `get_symbols_overview` | LSP documentSymbol, precise kinds/nesting |
| Find symbol by exact name (with body, before operating) | Serena `find_symbol` | LSP-accurate, overload-aware, includes body |
| Find symbol by concept / fuzzy / semantic | CBM `search_graph` | BM25 + semantic + name_pattern fusion |
| Direct references, one hop, LSP-accurate | Serena `find_referencing_symbols` | Type-aware; same tool then mutates |
| Transitive callers/callees, depth 3-5 | CBM `trace_path` | BFS multi-hop; Serena has no traversal |
| Data-flow trace with arg expressions | CBM `trace_path` `data_flow` | Serena has no data-flow |
| Cross-service / cross-repo call chain | CBM `trace_path` `cross_service` | CROSS_* edges through Route nodes |
| Blast radius / impact of a git diff | CBM `detect_changes` | Changed symbols → transitive callers + risk |
| Dead-code detection (zero-caller funcs) | CBM `query_graph` / `trace_path` | Graph-level; Serena sees direct refs only |
| Complexity / hot-path props (cyclomatic, loop_depth, linear_scan_in_loop) | CBM `query_graph` | Serena exposes no such properties |
| Implementations of interface/abstract (LSP-supported lang) | Serena `find_implementations` | LSP-accurate when supported |
| Implementations (no LSP, or cross-repo) | CBM `search_graph` / `query_graph` | IMPLEMENTS edges not language-server-gated |
| Declaration of a symbol, for editing | Serena `find_declaration` | Live buffer, navigates to mutate |
| Declaration / definition, read-only exploration | CBM `get_code_snippet` / `search_graph` | Qualified name + callers, many files/repos |
| Read source of a symbol, right before editing | Serena `find_symbol` `include_body=True` | Authoritative body when LSP is up |
| Read source while navigating the graph | CBM `get_code_snippet` | Works off the index; no LSP needed |
| Arbitrary line ranges, non-code, exact-line edits | plain `Read` | Serena/CBM aren't line-range readers |
| Rename symbol, whole-codebase | Serena `rename_symbol` | LSP propagates in one atomic call |
| Delete symbol if unreferenced | Serena `safe_delete_symbol` | Returns ref list if not safe |
| Replace a symbol's body | Serena `replace_symbol_body` | Anchored to identity, not line numbers |
| Insert before/after a specific symbol | Serena `insert_before_symbol` / `insert_after_symbol` | No line-number drift |
| Multi-file find-and-replace with a guard | Serena `replace_in_files` | dry_run → occurrence_ids → apply subset |
| Single-file regex/literal replace (large spans) | Serena `replace_content` | Wildcards for multi-line without full quoting |
| Diagnostics / lint / type errors after an edit | Serena `get_diagnostics_for_file` | Closes the verify loop; CBM has none |
| Coverage: is the graph complete? | CBM `check_index_coverage` / `index_status` | Best-effort signal, never proof |
| Exhaustive / negative claims ("no caller exists") | CBM coverage + Serena/grep in `parse_partial` ranges | Best-effort graph ≠ proof |
| Languages with no usable LSP | CBM (tree-sitter) or grep | Serena is blind without an LSP |
| Polyglot repo, no per-language LSPs configured | CBM | One binary, 158 grammars |
| ADR CRUD tied to the codebase | CBM `manage_adr` | ADR-specific, graph-adjacent |
| General project memory / gotchas | Serena `write_memory` / `read_memory` | Freeform, editable, cross-session |

## Tie-breakers for overlaps

- **"find references"** — multi-hop, relational, or discovery: CBM `trace_path`. Exact single-symbol LSP refs, especially right before a mutation: Serena `find_referencing_symbols` (same tool does the rename/delete).
- **"find symbol"** — discovery by concept/semantic or unknown name: CBM `search_graph`. Known name, precise retrieval with body, before operating: Serena `find_symbol`.
- **"read source"** — navigating the graph: CBM `get_code_snippet`. Right before editing: Serena `find_symbol(include_body=True)`. Arbitrary ranges, non-code, or exact-line edits: plain `Read`.
- **"implementations"** — LSP-supported language: Serena `find_implementations`. No LSP, or cross-repo: CBM.
- **Coverage claims** — CBM is best-effort. For exhaustive/negative claims, run `check_index_coverage`, then grep / Serena inside `parse_partial` ranges before asserting "no X exists".

## How they compose

A refactor runs through all three, in order:

1. **Ponytail** governs scope — does this abstraction need to exist? Fewest files, shortest diff.
2. **CBM** maps the blast radius — `detect_changes` or `trace_path(inbound)` for every caller the change touches.
3. **Serena** executes — `rename_symbol` / `safe_delete_symbol` / `replace_symbol_body` / `replace_in_files`, then `get_diagnostics_for_file` to verify.

Pipeline: **Ponytail decides → CBM maps → Serena executes.** Ponytail is never skipped for new code or review; CBM is never used to mutate; Serena is never used to decide scope.