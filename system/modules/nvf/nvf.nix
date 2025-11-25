{ pkgs, config, ... }:

{
  programs.nvf = {
    enable = true;
    settings.vim = {

      treesitter.grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        kdl
      ];

      theme = {
        enable = true;
        name = "gruvbox";
        style = "dark";
        transparent = false;
      };

      autocomplete = {
        blink-cmp = {
          enable = true;
          friendly-snippets.enable = true;
        };
      };

      autopairs = {
        nvim-autopairs = {
          enable = true;
        };
      };

      lineNumberMode = "relNumber";
      terminal.toggleterm.enable = true;
      hideSearchHighlight = true;

      clipboard = {
        enable = true;
        registers = "unnamedplus";
        providers = {
          wl-copy.enable = true;
        };
      };

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
        lightbulb.enable = true;
        lspkind.enable = true;
        otter-nvim.enable = true;
        trouble.enable = true;
      };

      #      binds = {
      #       whichKey.enable = true;
      #        cheatsheet.enable = true;
      #      };

      telescope.enable = true;

      options = {
        cmdheight = 1;
        autoindent = true;
        cursorlineopt = "both";
        shiftwidth = 0;
        tabstop = 2;
        signcolumn = "yes";
        termguicolors = true;
        wrap = false;
      };

      statusline = {
        lualine.enable = true;
      };

      visuals = {
        nvim-scrollbar.enable = true; # Shows a scrollbar in the editor
        nvim-cursorline.enable = true; # Highlights the current cursor line
        cinnamon-nvim.enable = true; # Provides smooth scrolling animations
        fidget-nvim.enable = true; # Shows LSP progress notifications in the corner
        #indent-blankline.enable = true; # Shows indentation guides and blank line markers
      };

      diagnostics.nvim-lint.enable = true;

      ui = {
        #noice.enable = true;
        borders.enable = true;
        modes-nvim = {
          enable = true;
          setupOpts = {
            line_opacity.visual = 0.15;
          };
        };
        illuminate.enable = true;
      };

      utility = {
        multicursors.enable = true;
        surround.enable = true;
        outline.aerial-nvim.enable = true;
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
