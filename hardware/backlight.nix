{config, pkgs, ...}:

{
  hardware = {
    enableRedistributableFirmware = true;
    acpilight.enable = true; 
  };
}
