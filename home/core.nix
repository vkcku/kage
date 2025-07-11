{ username, ... }:

{
  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.stateVersion = "25.05";

  imports = [
    ./helix/helix.nix
    ./fonts/fonts.nix
  ];
}
