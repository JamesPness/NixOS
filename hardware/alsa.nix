{config, pkgs, ...}:

{
  sound = {
    enable = true;
  };
  boot.extraModprobeConfig = ''
  options snd slots=snd-hda-intel
'';
};
