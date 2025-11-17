{config, pkgs, ...}:

{
  fonts = {
    packages = with pkgs; [
      comic-mono
      corefonts
      fira-code
      fira-code-symbols
    ];

    fonts = with pkgs; [
      nerdfonts
    ];
  };  
}
