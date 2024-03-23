{
  description = "elm dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in with pkgs; {
        devShells.default = mkShell {
          buildInputs = [
            (with elmPackages; [ elm elm-test elm-format elm-language-server ])

          ];

        };
      });
}
