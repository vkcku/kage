{
  description = "kage - the command center for my machines";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = {self, nixpkgs, ...}@inputs: {
    nixosConfigurations.hokage = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./machines/hokage
      ];
    };
  };
}
