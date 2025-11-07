{config, pkgs, self, ...}:

{
  imports = [
    ./modules/git.nix
    ./modules/firefox.nix
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
  
  xdg.configFile."niri/config.kdl".text = builtins.readFile ../home/modules/niri.kdl;
}
