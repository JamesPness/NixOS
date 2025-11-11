{config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs; [
      yazi
      fd
      ripgrep
      ffmpeg
      poppler
      jq
      resvg
    ];
  };
}
