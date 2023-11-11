{
  description = "gwg313 nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";

    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    pre-commit-hooks.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    pre-commit-hooks,
    nixvim,
    ...
  }: let
    withSystem = f:
      nixpkgs.lib.fold nixpkgs.lib.recursiveUpdate {} (
        map f [
          "x86_64-linux"
          "x86_64-darwin"
          "aarch64-linux"
          "aarch64-darwin"
        ]
      );
  in
    withSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        config = import ./config;
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
      in {
        packages.${system} = {
          default = nvim;
        };
        devShells.${system} = {
          default = pkgs.mkShell {
            inherit (self.checks.${system}.pre-commit-check) shellHook;
            buildInputs = with pkgs; [
              alejandra
            ];
          };
        };
        checks.${system} = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "My nixvim configuration";
          };
          pre-commit-check = pre-commit-hooks.lib.${system}.run {
            src = ./.;
            hooks = {
              alejandra.enable = true;
            };
          };
        };
      }
    );
}
