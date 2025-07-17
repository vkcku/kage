{ config, pkgs, lib, ... }:

{
  home.packages = [
    pkgs.waybar
    pkgs.font-awesome # required by waybar
  ];

  home.file."${config.xdg.configHome}/waybar/config" = lib.mkForce {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/kage/home/waybar/config";
  };
}
