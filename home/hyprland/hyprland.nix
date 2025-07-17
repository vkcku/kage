{ config, pkgs, lib, ... }:

{
  home.packages = [
    pkgs.hyprland
    pkgs.hyprlock
    pkgs.hypridle
    pkgs.wofi
  ];

  wayland.windowManager.hyprland.enable = true;

  home.file."${config.xdg.configHome}/hypr/hyprland.conf" = lib.mkForce {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/kage/home/hyprland/hyprland.conf";
  };

  home.file."${config.xdg.configHome}/hypr/hyprlock.conf" = {
    source = ./hyprlock.conf;
  };

  home.file."${config.xdg.configHome}/hypr/hypridle.conf" = {
    source = ./hypridle.conf;
  };
}
