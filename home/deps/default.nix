{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs_20
    go
    gopls
    pkg-config 
    gcc 
    openssl 
    zig
    lua
    rust-analyzer

    python3
    black
    isort

    xclip

    shellcheck
    pandoc
  ];
}
