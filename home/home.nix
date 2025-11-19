{config, pkgs, inputs, system, ...}:
let 
  inherit (inputs.nfsm-flake.packages.${system}) nfsm nfsm-cli;
in
{
  imports = [
    ./modules/git.nix
    ./modules/firefox.nix
    ./modules/swaylock.nix
    ./modules/kitty.nix
    ./modules/waybar/waybar.nix
  ];

  home = { 
    username = "mads";
    homeDirectory = "/home/mads";
    stateVersion = "25.05";
    packages = with pkgs; [
      fuzzel
      libnotify
      gcc
      gdb
      zip
      signal-desktop
      fastfetch
      discord
      swaybg
      nfsm
      nfsm-cli
    ];
  };
  
  xdg.configFile."niri/config.kdl" = {
    text = builtins.readFile ./modules/niri.kdl;
    force = true;
  };
  xdg.configFile."waybar/config.jsonc".source = ./modules/waybar.jsonc;
}
