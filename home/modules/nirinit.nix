{config, pkgs, ...}:

{
  inputs.nirinit = {
    url = "github:amaanq/nirinit";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  # In your NixOS configuration:
  imports = [ nirinit.nixosModules.nirinit ];

  services.nirinit.enable = true;

  # In your Home Manager configuration:
  imports = [ nirinit.homeModules.nirinit ];

  services.nirinit.settings.skip.apps = [ "discord" "firefox" ];
}
