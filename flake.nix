{
  description = "all migthy main flake !{0o0}!";
  inputs = {

    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    
    home-manager = {
      url = "github:nix-community/home-manager/"; 
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nfsm-flake = {
      url = "github:gvolpe/nfsm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
    
  outputs = inputs@{
    nixpkgs, 
    home-manager,
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
          home-manager.nixosModules.home-manager
	  {
	    home-manager = {
	      useGlobalPkgs = true;
	      useUserPackages = true;
	      users.mads = ./home/home.nix;
	      extraSpecialArgs = {
	        inherit system;
		inherit inputs;
	      };
	    };	    
	  }
          
	  ./hardware/sound.nix
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

