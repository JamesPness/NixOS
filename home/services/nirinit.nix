{ config, pkgs, lib, ... }:

{
  systemd.user.services = {
    restoreNiriSession = {
      Unit = {
        Description = "Restore Niri session on login";
        After = [ "graphical-session.target" ];
      };
      Service = {
        Type = "oneshot";
        ExecStart = pkgs.writeShellScript "restore-niri-session" ''
          SESSION_FILE="$HOME/.local/share/niri/session.json"
          if [[ -f "$SESSION_FILE" ]]; then
            for cmd in $(jq -r '.[].exec' "$SESSION_FILE"); do
              $cmd &
            done
          fi
        '';
      };
      Install = { WantedBy = [ "default.target" ]; };
    };

    saveNiriSession = {
      Unit = {
        Description = "Save Niri session on logout";
        PartOf = [ "graphical-session.target" ];
      };
      Service = {
        Type = "oneshot";
        ExecStart = pkgs.writeShellScript "save-niri-session" ''
          mkdir -p "$HOME/.local/share/niri"
          nirictl list-windows | jq '[.[] | {exec: .command}]' \
            > "$HOME/.local/share/niri/session.json"
        '';
      };
      Install = { WantedBy = [ "default.target" ]; };
    };
  };

  home.activation.enableNiriSession = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    ${config.systemd.user.systemctlPath} --user enable restoreNiriSession.service saveNiriSession.service
  '';
}
