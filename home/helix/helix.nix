{ config, pkgs, ... }:

{
  home.packages = [ pkgs.helix ];
  home.file."${config.xdg.configHome}/helix/config.toml" = {
    source = ./config.toml;
  };
}
