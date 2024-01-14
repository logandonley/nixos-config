{ pkgs, ... }: {
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
    nixfmt
    shfmt
    gomodifytags
    gotests
    gore
    gotools

    stylelint
    typescript
    nodePackages.typescript-language-server
    nodePackages.prettier
    zx

    firejail

    nil

    python3
    black
    isort

    xclip

    shellcheck
    pandoc
  ];
}
