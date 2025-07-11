{ username, pkgs, ... }:

{
  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.packages = with pkgs; [
    unzip
    zstd
    coreutils

    htop
    linuxPackages_latest.perf
  
    bat
    eza
    fd
    ripgrep
    jaq
    xh
  ];
  

  home.stateVersion = "25.05";

  imports = [
    ./helix/helix.nix
    ./fonts/fonts.nix
    ./git/git.nix
  ];
}
