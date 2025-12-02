{ pkgs, config, ... }:

{
  programs.git = {
    enable = true;
    userName = "madshrped";
    userEmail = "madshrped@gmail.com";
  };
}
