{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    libgcc
    nodejs_20
    go
    gopls

    python3
    black
    isort

    lua

    xclip

    shellcheck
    pandoc
  ];
}
