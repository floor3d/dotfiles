{ config, pkgs, lib, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
    #./hyprland-home-manager.nix
  ];

  home-manager.users.evan = { pkgs, ... }: {
    home.packages = [ pkgs.neo-cowsay ];
    programs.bash.enable = true;
    home.stateVersion = "22.11";
  };
  home-manager.useGlobalPkgs = true;
}
