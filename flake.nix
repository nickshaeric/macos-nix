{
  description = "nicksha's nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }: {
    darwinConfigurations."macbook" = nix-darwin.lib.darwinSystem {
      specialArgs = { inherit self; };
      modules = [
        ./hosts/macbook/default.nix
      ];
    };
  };
}
