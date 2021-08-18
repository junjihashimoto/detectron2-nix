{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {}
, poetry2nix ? import sources.poetry2nix { inherit pkgs; poetry = pkgs.poetry; }
}:
let
  lib = pkgs.lib;
in poetry2nix.mkPoetryEnv  {
    projectDir = ./.;
}
