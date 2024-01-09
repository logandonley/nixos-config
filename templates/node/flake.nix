{
  description = "Node dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self , nixpkgs ,... }: let
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      packages = with pkgs; [
        nodejs_20
        nodePackages.pnpm
        (yarn.override { nodejs = nodejs_18; })
      ];

      shellHook = ''
        echo "Node time like the present! 🤮"
      '';
    };
  };
}
