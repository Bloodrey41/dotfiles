# Working rules

Before starting, and at every decision point:

1. **Propose before you build — decide with evidence, never in silence.**
   Never take a material decision unilaterally. Whenever requirements are
   ambiguous, a choice has consequences, or more than one reasonable path
   exists, the decision goes to Miguel — not as an open question, but as a
   researched proposal.
   - **Research before proposing (mandatory).** Check the codebase for
     existing patterns and conventions; pull official docs for current
     API/framework guidance (ctx7 / find-docs); web search for current best
     practices where the field moves. Prefer real data, benchmarks, and
     version-specific docs over opinion or training-data habit. Research
     tools are part of the rule-2 tool inventory — if evidence is needed,
     fetching it is mandatory, not optional.
   - **Proposal format:** 2-3 options with trade-offs, the evidence for each,
     and one recommended option marked as such. Batch proposals at decision
     points; resolve them before building.
   - **Correct with evidence.** When best practice, docs, or real data
     contradict Miguel's stated approach, push back with the evidence and
     propose the better path — do not silently follow an inferior instruction.
   - **Tiered gate:** an explicit yes is required before building anything
     material. Trivial choices with an obvious default may proceed but must be
     stated in one line ("Took X; say if you want Y").
   - **Both failure modes are violations:** silently picking an option, and
     asking "which do you prefer?" with no research behind it.

2. **Inventory your tools before any work — this is a required step, not
   optional.** At task start, enumerate the tools available to you for this
   task: specialized agents, skills, MCPs, plugins, and the three general
   tools (Ponytail, codebase-memory-mcp, Serena). Your full tool list is in
   your context — scan it; do not assume the three general tools are all that
   exists. State which tools you will use and why before starting. This
   inventory is what the report in rule 5 is checked against.

3. **Use the right tools — both layers are mandatory.** Follow the global
   tool-selection rule. The three general tools are mandatory in their roles:
   Ponytail decides scope (YAGNI, shortest diff), codebase-memory-mcp maps and
   understands the code (architecture, callers, blast radius), Serena executes
   precisely (rename, refactor, diagnostics). And with the same weight: any
   specialized agent, skill, MCP, or plugin that fits any part of this task is
   mandatory to use. When a specialized tool and a general tool overlap, the
   specialized one covers what it fits; the general tool covers the rest.
   Finishing a task without using any specialized tool requires an explicit
   justification — "none applied" without evidence is not acceptable.

4. **Propagate these rules to every agent-facing document you create or
   update** (OpenSpec changes, design docs, runbooks): include a short "Agent
   instructions" preamble so any agent reading the doc follows the same rules
   — propose before build with evidence, correct with evidence, inventory
   tools before work, use specialized tools when they fit, Serena/Ponytail/CBM
   mandatory.

5. **Report tool usage.** At the end of each task, present a structured report
   of which tools were used, when, and why. The report must include:
   - Tools used: every tool, when, why, and what it contributed
   - Ponytail: how it was used (scope decision, YAGNI check, what was cut)
   - codebase-memory-mcp: how it was used (what was discovered, what paths
     were traced)
   - Serena: how it was used (what edits were made, what diagnostics were run)
   - Specialized tools (agents, MCPs, plugins, skills): which were used and
     what they contributed
   - Tools that were available but NOT used: list each with a one-line reason

   Failure to produce this report, omitting a mandatory tool
   (Ponytail/CBM/Serena) without justification, or leaving an available tool
   that fits the task unused without justification, results in automatic
   non-approval of the work — the output will be rejected and must be redone
   with the correct tool usage and a complete report.
