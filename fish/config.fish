# replace ls with exa, the newer and cooler version of ls
alias ls 'exa'
#replace cat with bat (cat with wings of course)
alias cat 'bat'
# lazy alias for neovim
alias v 'nvim'
# every time neofetch is run, switch the ascii art and run it
alias neofetch '~/.config/neofetch/switch-ascii-neofetch; /usr/bin/neofetch'
# "automatically copy over the terminfo files and also magically enable shell integration on the remote machine."
alias s 'kitten ssh'

if status is-interactive
    # Commands to run in interactive sessions can go here
end
