{config, pkgs, ...}:

{
  fonts = {
    packages = with pkgs; [
      comic-mono
      corefonts
      nerd-fonts.symbols-only
      nerd-fonts.fira-code
      font-awesome
    ];
  };  
}
