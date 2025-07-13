{ config, pkgs, username, ... }:

{
  home.packages = [
    pkgs.git
    pkgs.gh
    pkgs.delta # for diff
  ];

  home.file.".gitconfig" = {
    source = ./gitconfig;
  };
}
