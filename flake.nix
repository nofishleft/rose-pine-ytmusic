{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        rose-pine-bloom = pkgs.callPackage ./rose-pine-bloom.nix {};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            inotify-tools
            nodejs
            sass
            rose-pine-bloom
          ];
        };
      }
    );
}
