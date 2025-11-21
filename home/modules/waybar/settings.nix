{
  mainBar = {
    height = 10;
    spacing = 5;
    layer = "top";
    position = "top";
    modules-center = [
      "clock"
    ];

    modules-right = [
      "pulseaudio"
      "battery"
    ];

    modules-left = [
    ];

    battery = {
      format = "{capacity}% {icon}";
      states = {
        warning = 40;
        critical = 20;
      };
      format-plugged = "{capacity}% 󰂄";
      format-icons = [
        "󰁺"
        "󰁻"
        "󰁼"
        "󰁽"
        "󰁾"
        "󰁿"
        "󰂀"
        "󰂁"
        "󰂂"
        "󰁹"
      ];
      tooltip = false;
    };

    pulseaudio = {
      format = "{volume}% {icon}";
      format-muted = "";
      format-icons = [
        "\uf026"
        "\uf027"
        "\uf028"
      ];
      tooltip = false;
    };
  };
}
