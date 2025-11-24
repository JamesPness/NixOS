{pkgs, config, ...}:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "Comic Mono:size=12";
	icons-enabled = "no";
      };
      colors = {
        background = "1d2021ff";
	text = "ebdbb2ff";
	input = "cc241dff";
	selected = "282828ff";
	selection-text = "a89984ff";
        selection-match = "458588ff";
        match = "83a598ff";
      };
     
      border = {
        width = 3;
        radius = 3;
      };
    };
  };
}
