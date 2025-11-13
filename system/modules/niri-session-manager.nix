{config, ...}:

{
  services.niri-session-manager{
    enable = true;
    services.niri-session.manager.settings = {
      save-interval = 10;
      max-backup-count = 3;
    };
  };
}
