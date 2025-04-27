# home/peachie/waybar.nix 
# Monokai Pro Octagon Waybar

{ config, pkgs, lib, ... }:

{
  programs.waybar = {
    enable = true;

  settings = {
    mainBar = {
      layer = "top";
      position = "top";
      exclusive = true;
      margin = "0px";
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [
        "pulseaudio"
        "battery"
        "network"
        "cpu"
        "memory"
        "tray"
      ];
      "hyprland/workspaces" = {
        on-click = "activate";
      };

      clock = {
        format = "{:%I:%M %p - %a, %d %b %Y}";
        tooltip = false;
      };

      battery = {
        format = "{capacity}% {icon}";
        format-icons = [ "" "" "" "" "" "" "" "" "" "" "" ];
      };

      network = {
        format-wifi = " {essid}";
        format-ethernet = "";
        format-disconnected = "🚫";
      };

      pulseaudio = {
        format = "{volume}% {icon}";
        format-icons = [" "];
        scroll-step = 5;
      };

      cpu = {
        format = "CPU {usage}% ";
        tooltip = false;
      };

      memory = {
        format = "RAM {used} / {total} GiB";
        tooltip = false;
      };
    };
  };      

    style = ''
      * {
        font-family: "FiraCode Nerd Font Propo";
        font-size: 13px;
        background: transparent;
        border-radius: 8px;
        color: #f5f9f8;
      }

      window#waybar {
        background-color: rgba(40, 42, 58, 0.85);

      }

      #workspaces button {
        background: rgba(83, 87, 99, 0.4);
        color: #f5f9f8;
        margin: 2px;
        border-radius: 8px;
      }

      #workspaces button.active {
        background: #c39ac9;
        color: #282a3a;
      }

      #clock,
      #pulseaudio,
      #battery,
      #network,
      #tray {
        background-color: rgba(83, 87, 99, 0.5);
        padding: 6px 10px;
        margin: 4px;
        border-radius: 10px;
      }

      #workspaces button:hover,
      #clock:hover,
      #pulseaudio:hover,
      #battery:hover,
      #network:hover,
      #tray:hover {
        background-color: #9cd1bb;
        color: #282a3a;
      }

      #cpu,
      #memory {
        background-color: rgba(83, 87, 99, 0.5); /* matches the others! */
        padding: 6px 10px;
        margin: 4px;
        border-radius: 10px;
      }

      #cpu:hover,
      #memory:hover {
        background-color: #9cd1bb;
        color: #282a3a;
      }
    '';
  };
}
