{ config, pkgs, ... }:

{
  imports = [
    ./modules/fonts.nix
    ./modules/yazi.nix
    ./modules/nvf/nvf.nix
  ];

  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      neovim
      wget
      xwayland-satellite
      wl-clipboard
    ];

    variables = {
      EDITOR = "nvim";
    };
  };

  programs.niri.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
}
