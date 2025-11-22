{pkgs, config, ...}:

{
  programs.fuzzel = {
    settings = {
      colors = {
        background = "1d2021b4";
	text = "ebdbb2ff";
	input = "cc241dff";
	selected = "282828b4";
	selection-text = "a89984ff";
        selection-match = "458588ff";
        match = "83a598b4";
      };
     
    border = {
      width = 3;
      radious = 3;
    };
      font = "Comic Mono";
    };
  };
}
