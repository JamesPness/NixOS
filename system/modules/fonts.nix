{config, pkgs, ...}:

{
  fonts = {
    packages = with pkgs; [
      comic-mono
      corefonts
      nerd-fonts.symbols-only
    ];
  };  
}
