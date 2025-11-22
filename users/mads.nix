{ config, pkgs, ...}:

{
  users.users.mads = {
    isNormalUser = true;
    description = "Mads";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [];
  };
}
