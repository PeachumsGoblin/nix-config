{ config, pkgs, lib, ... }:

{
  systemd.user.services.set-light-theme = {
    Unit = {
      Description = "Set light theme at dawn";
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${config.home.homeDirectory}/nix-config/scripts/set-light-theme.sh";
    };
  };

  systemd.user.services.set-dark-theme = {
    Unit = {
      Description = "Set dark theme at dusk";
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${config.home.homeDirectory}/nix-config/scripts/set-dark-theme.sh";
    };
  };

  systemd.user.timers.set-light-theme = {
    Unit.Description = "Apply light theme at dawn";
    Timer = {
      OnCalendar = "06:00";
      Persistent = true;
    };
    Install.WantedBy = [ "timers.target" ];
  };

  systemd.user.timers.set-dark-theme = {
    Unit.Description = "Apply dark theme at dusk";
    Timer = {
      OnCalendar = "18:00";
      Persistent = true;
    };
    Install.WantedBy = [ "timers.target" ];
  };
}
