Always prioritize using skills (`~/.config/opencode/skills/`) and specialized agents (subagent types via `task`) for every task.
Before writing code, answering questions, or making changes:
1. Analyze the task to identify which available skills apply
2. For multi-step or domain-specific work, dispatch the appropriate specialized agent via `task` with `subagent_type`
3. Follow the invoked skill's instructions exactly
4. Only fall back to general reasoning when no skill or agent applies
This applies even if the task seems simple — skills provide structured workflows that prevent errors and ensure consistency.
