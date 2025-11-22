{pkgs, config, ...}:

{
  programs.nvf = {
    enable = true;
    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "darker";
	transparent = true;
      };
  
      autocomplete = {
	blink-cmp = {
          enable = true;
  	  enableSharedCmpSources = true;
	};
      };

      autopairs = {
        nvim-autopairs = {
	  enable = true;
	};
      };

      lineNumberMode = "relNumber";
      
      languages = {
        enableLSP = true;
        enableTreesitter = true;
        enableFormat = true;
        enableDAP = true;
	
        nix = import ./langs/nix.nix; 
        clang.enable = true;
	python.enable = true;
        ts.enable = true;
      };

      lsp = {
        formatOnSave = true; 
	inlayHints.enable = true;
      };

      options = {
        autoindent = true;
	shiftwidth = 0;
	tabstop = 4;
        wrap = false;  
      };
      
      visuals = {
        nvim-scrollbar.enable = true;
      };

      utility = {
        yazi-nvim = {
          enable = true;
	  mappings = {
            openYazi = "<leader>y";
	    openYaziDir = "<leader>Y";
	  };
          setupOpts.open_for_directories = true;
	};
      };
    };
  };
}
