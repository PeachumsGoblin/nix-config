{
  description = "Peachie's NixOS flake for peach-koopy";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.peach-koopy = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          self = inputs.self;
        };
        
      modules = [
        ./hosts/peach-koopy/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.extraSpecialArgs = {
            inherit inputs;
            self = inputs.self;
            allowFileClobbering = true;
          };

          home-manager.users.peachie = import ./home/peachie/home.nix;
        }
      ];
    };
  };
}
