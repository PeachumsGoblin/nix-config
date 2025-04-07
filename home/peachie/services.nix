{ config, lib, pkgs, ... }:

{
  systemd.user.timers.theme-switch = {
    Unit = {
      Description = "Auto-switch theme at sunrise/sunset";
    };
    Timer = {
      OnCalendar = "06:00,18:00";
      Persistent = true;
    };
    Install = {
      WantedBy = [ "timers.target" ];
    };
  };

  systemd.user.services.theme-switch = {
    Unit = {
      Description = "Toggle light/dark theme";
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${config.home.homeDirectory}/nix-config/scripts/toggle-theme.sh";
    };
  };
}
