{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      neovim
      yazi
      kitty
      wget
    ];
    
    variables = {
      EDITOR = "nvim";
    };
  };

  fonts = {
    packages = with pkgs;[
      nerd-fonts.symbols-only
    ];
  };  
  
  programs.niri.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  
  system.stateVersion = "25.05";
}
