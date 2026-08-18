source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


alias v 'nvim .'
alias y 'yazi'
alias olo 'ollama launch opencode'
alias oc 'opencode'
alias a 'agent'


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# opencode
fish_add_path /home/miguel/.opencode/bin
