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
#kubectl facepalm
#makes kubectl work locally
alias kubectl "minikube kubectl --"

alias wmlab "xfreerdp ~/Programming/Malware\ Topics\ Test\ Spring\ 2024.rdp /p:Example_Password1 /dynamic-resolution"

alias vpnup "sudo wg-quick up XPS-13"

alias vpndown "sudo wg-quick down XPS-13"

alias install "sudo pacman -Syu"

if status is-interactive
    # Commands to run in interactive sessions can go here
    # init zoxide
    zoxide init --cmd cd fish | source
end

# Created by `pipx` on 2024-03-12 22:46:21
set PATH $PATH /home/evan/.local/bin
# add cargo bin 2 path
set -gx PATH $PATH /home/evan/.cargo/bin/

set -gx PATH $PATH /home/evan/.config/dotfiles/scriptz
