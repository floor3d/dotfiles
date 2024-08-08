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

alias pac "sudo pacman -Syu"


if status is-interactive
    # Commands to run in interactive sessions can go here
    # init zoxide
    zoxide init --cmd cd fish | source
    fzf --fish | source
    source $HOME/.config/fish/fish_prompt.fish
end

# Created by `pipx` on 2024-03-12 22:46:21
set PATH $PATH $HOME/.local/bin
# add cargo bin 2 path
set -gx PATH $PATH $HOME/.cargo/bin/

set -gx PATH $PATH $HOME/.config/dotfiles/scriptz

set -gx PATH $HOME/.nix-profile/bin/ $PATH 

# copy for 'evand'
# Created by `pipx` on 2024-03-12 22:46:21
set PATH $PATH $HOME/.local/bin
# add cargo bin 2 path
set -gx PATH $PATH $HOME/.cargo/bin/

set -gx PATH $PATH $HOME/.config/dotfiles/scriptz

if command -v direnv > /dev/null
    direnv hook fish | source
end
