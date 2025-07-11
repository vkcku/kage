{
  description = "kage - the command center for my machines";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      # Ensure home manager uses the same nixpkgs as the flake.
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, home-manager, ...}: {
    nixosConfigurations.hokage = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./machines/hokage

        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "bak";

          # These arguments are passed to `home.nix`.
          home-manager.extraSpecialArgs = {
             username = "vkcku";
          };
          home-manager.users.vkcku = import ./machines/hokage/home.nix;
        }
      ];
    };
  };
}
