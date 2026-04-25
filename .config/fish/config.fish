source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


alias v 'nvim .'
alias y 'yazi'
alias ad 'bunx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices && bunx skills add https://github.com/obra/superpowers --skill brainstorming && bunx skills add https://github.com/dammyjay93/interface-design --skill interface-design && bunx skills add https://github.com/wshobson/agents --skill api-design-principles && bunx skills add https://github.com/obra/superpowers --skill systematic-debugging && bunx skills add https://github.com/wshobson/agents --skill error-handling-patterns && bunx skills add https://github.com/composiohq/awesome-claude-skills --skill changelog-generator'
alias olc 'ollama launch claude'


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
