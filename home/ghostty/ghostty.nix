{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.ghostty
  ];

  home.file."${config.xdg.configHome}/ghostty/config" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/kage/home/ghostty/config.ini";
  };

  programs.ghostty.enable = true;
}
