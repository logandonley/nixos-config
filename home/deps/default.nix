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
    lua-language-server
    rust-analyzer
    nixfmt
    shfmt
    gomodifytags
    gotests
    gore
    gotools
    templ

    stylelint
    typescript
    nodePackages.typescript-language-server
    nodePackages.prettier
    bun
    zx

    nil

    python3
    black
    isort

    xclip

    shellcheck
    pandoc

    elixir
    elixir-ls
    livebook

    flutter

    vscode-langservers-extracted # html lang server
    htmx-lsp
    tailwindcss-language-server
    emmet-ls
    dockerfile-language-server-nodejs
    eslint_d
  ];

}
