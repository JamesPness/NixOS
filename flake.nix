{
  description = "all migthy main flake !{0o0}!";
  inputs = {

    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    
    home-manager = {
      url = "github:nix-community/home-manager/"; 
      inputs = {
	nixpkgs = {
	  follows = "nixpkgs";
	};
      };
    };

    niri-session-manager = {
      url = "github:MTeaHead/niri-session-manager";
    };

  };
  
  outputs = inputs@{
    nixpkgs, 
    home-manager,
    niri-session-manager,
    ...
  }:

  let
    system = "x86_64-linux";
    nixosSystem = nixpkgs.lib.nixosSystem;
    users = 
      builtins.map (name: import (./users + "/${name}"))(
        builtins.attrNames (builtins.readDir ./users)
      );

  in

  {
    nixosConfigurations = {
      main = nixosSystem {
	inherit system;
	modules = [
          "${niri-session-manager}/system/modules/niri-session-manager.nix"

	  home-manager.nixosModules.home-manager
	  {
	    home-manager = {
	      useGlobalPkgs = true;
	      useUserPackages = true;
	      users.mads = ./home/home.nix;
	      extraSpecialArgs = inputs;
	    };	    
	  }
          
	  ./hardware/bluetooth.nix
	  ./hardware/hardware-configuration.nix
          ./boot.nix
	  ./system/system-modules.nix	
	  ./system/system-settings.nix
	  ./nix/nix.nix
	] ++ users;
      };
    };	
  };
}

