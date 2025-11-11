{config, pkgs, ...}:

{ 
  programs.kitty = {
    enable = true;

    settings = {
      repaint_delay = 6;
  
      wayland_enable_ime = "no";
  
      tab_bar_edge         = "top";
      tab_bar_style        = "separator";
      tab_separator        = "' | '";
      tab_bar_align        = "center";
      tab_activity_symbol  = "(!)";
      tab_title_max_length = 35;
  
      scrollbar       = "always";
      scrollbar_width = 1;
  
      clear_all_shortcuts = "yes";
      
      font_family      = "comic-mono";
  
      #font_size = 7;
  
 
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      mouse_hide_wait = "-1.0";
      window_padding_width = 10;
      background_opacity = "0.5";
      background_blur = 5;
    
    };
    
    
    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";
    };

    extraConfig = ''
      include themes/gruvebox-hard-dark.conf
    '';
  };
}
