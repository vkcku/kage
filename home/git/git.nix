{ config, pkgs, username, ... }:

{
  home.packages = [
    pkgs.git
    pkgs.gh
  ];

  home.file.".gitconfig" = {
    source = ./gitconfig;
  };
}
