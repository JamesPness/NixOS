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
      discord
      libnotify
      gcc
      gdb
      zip
      signal-desktop
      neofetch
    ];
  };
}
