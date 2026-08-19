# Launch Claude Code against Ollama with three distinct models selectable via /model.
#   opus   -> glm-5.2:cloud                     (main)
#   sonnet -> deepseek-v4-flash:0731-cloud      (second)
#   haiku  -> minimax-m3:cloud                  (image input)
function olc
    set -lx ANTHROPIC_BASE_URL http://127.0.0.1:11434
    set -lx ANTHROPIC_API_KEY ""
    set -lx ANTHROPIC_AUTH_TOKEN ollama
    set -lx CLAUDE_CODE_ATTRIBUTION_HEADER 0
    set -lx DISABLE_ERROR_REPORTING 1
    set -lx DISABLE_FEEDBACK_COMMAND 1
    set -lx CLAUDE_CODE_DISABLE_FEEDBACK_SURVEY 1

    set -lx ANTHROPIC_DEFAULT_OPUS_MODEL "glm-5.2:cloud[1m]"
    set -lx ANTHROPIC_DEFAULT_OPUS_MODEL_NAME "GLM 5.2"
    set -lx ANTHROPIC_DEFAULT_SONNET_MODEL "deepseek-v4-flash:0731-cloud[1m]"
    set -lx ANTHROPIC_DEFAULT_SONNET_MODEL_NAME "DeepSeek V4 Flash"
    set -lx ANTHROPIC_DEFAULT_HAIKU_MODEL "minimax-m3:cloud"
    set -lx ANTHROPIC_DEFAULT_HAIKU_MODEL_NAME "MiniMax M3"

    set -lx CLAUDE_CODE_SUBAGENT_MODEL "deepseek-v4-flash:0731-cloud"
    set -lx CLAUDE_CODE_AUTO_COMPACT_WINDOW 1000000

    claude --model glm-5.2:cloud[1m] $argv
end
