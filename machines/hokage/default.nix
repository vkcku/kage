{ ... }:

{
  imports = [
    ./configuration.nix

    # Importing this here instead of via `home.nix` since `kanata` is not part of
    # Home Manager.
    ../../home/kanata/kanata.nix
  ];
}
