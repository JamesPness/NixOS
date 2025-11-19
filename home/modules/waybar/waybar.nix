{config, pkgs, ...}:

{
  programs.waybar = {
    enable = true;
    settings = import ./settings.nix;
    style = ./style.css;
  };
}

