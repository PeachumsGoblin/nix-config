# home/peachie/waybar.nix 
# Monokai Pro Octagon Waybar

{ config, pkgs, lib, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      layer = "top";
      position = "top";
      height = 28;
      margin = 6;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "battery" "network" "tray" ];

      "hyprland/workspaces" = {
        on-click = "activate";
      };
      clock = {
        format = "{:%I:%M %p}";
        tooltip-format = "{:%A, %B %d, %Y}";
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
        format = "{volume}% ";
        scroll-step = 5;
      };
    };

    style = ''
      * {
        font-family: "Fira Code", "monospace";
        font-size: 13px;
        border: none;
        border-radius: 8px;
        padding: 4px 8px;
        margin: 3px;
        background: transparent;
        color: #f5f9f8;
      }

      window#waybar {
        background-color: rgba(40, 42, 58, 0.85);
        border-radius: 12px;
        padding: 5px;
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
    '';
  };
}
