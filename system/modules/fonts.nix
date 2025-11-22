{config, pkgs, ...}:

{
  fonts = {
    packages = with pkgs; [
      comic-mono
      corefonts
      powerline-fonts
      powerline-symbols
      nerd-fonts.symbols-only
      font-awesome
    ];
  };  
}
