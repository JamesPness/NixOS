{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      neovim
      yazi
      wget
      xwayland-satellite
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

}
