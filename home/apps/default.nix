{ config, pkgs, ... }:

{
  imports = [
    ./common.nix
    ./obs.nix
    ./ide.nix
    ./browser.nix
    ./terminal.nix
  ];
}