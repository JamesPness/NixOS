{ pkgs, config, ... }:

{
  nix = {
    gc = {
      options = "--delete-older-than +5";
      automatic = true;
      dates = "weekly";
    };

    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };
}
