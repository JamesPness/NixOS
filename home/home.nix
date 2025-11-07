{config, pkgs, self, ...}:

{
  imports = [
    ./modules/git.nix
    ./modules/firefox.nix
    ./modules/swaylock.nix
    ./modules/swww.nix
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
      neofetch
      discord
    ];
  };
  
  xdg.configFile."niri/config.kdl" = {
    text = builtins.readFile ./modules/niri.kdl;
    force = true;
  };
}
