{config, pkgs, ...}:

{ 
  programs.kitty = {
    enable = true;

    settings = {
      repaint_delay = 6;
  
      wayland_enable_ime = "no";
  
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_separator = "' | '";
      tab_bar_align = "center";
      tab_activity_symbol  = "(!)";
      tab_title_max_length = 35;
  
      scrollbar = "always";
      scrollbar_width = 1;
  
      clear_all_shortcuts = "yes";
      
      font_family = "Comic Mono";
      bold_font = "Comic Mono";
      italic_font = "Comic Mono"; 
      bold_italic_font = "Comic Mono";

      font_size = 12;
  
      sync_to_monitor = "yes"; 
      confirm_os_window_close = 0;
      dynamic_background_opacity = "yes";
      enable_audio_bell = "yes";
      mouse_hide_wait = "0.5";
      background_opacity = "0.9";
      window_padding_width = "5";
      background_blur = "1000";

      cursor_shape = "beam";
      cursor_shape_unfocused = "underline";
      cursor_trail = "yes";
      cursor_trail_delay = "0.08";

      strip_trailing_spaces = "always";

      url_style = "curly";
    };
    
    theme = "Gruvbox Dark Hard";

    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";
    };

    extraConfig = ''
      include themes/gruvebox-hard-dark.conf
    '';
  };
}
