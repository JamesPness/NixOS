{pkgs, config, ...}:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Gruvbox Dark Hard";
      font-family = "Comic Mono";
    };
  };
}

