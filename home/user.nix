# Configurations for when the machine has an actual user and is not a server.


{ ... }:

{
  imports = [
    ./spotify/spotify.nix
    ./shell/shell.nix
    ./ghostty/ghostty.nix
  ];
}
