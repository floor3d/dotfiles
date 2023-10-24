# dotfiles
This is a list of dotfiles and scripts I use. 

### My use case
On my machine (currently, my Arch setup on my laptop), I symlink each dotfile to their proper area.
For example:
```
cd ~/.config
ln -s dotfiles/fish/config.fish fish/config.fish
```
This will set your fish config to the config that is in my dotfiles. Every time the dotfiles' config.fish is updated, the symlinked file is also updated. Therefore, all of the changes can simply be made in the dotfiles directory, so long as everything is symlinked correctly.
