{ pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs_20
    go
    gopls
    pkg-config
    gcc
    openssl
    zig
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
    nodePackages.svelte-language-server
    bun
    zx

    nil

    python3
    black
    isort
    ruff
    ruff-lsp
    uv
    nodePackages.pyright

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

    sqlite
    inotify-tools

    feh
    imlib2Full

    ghc
    stack
    cabal-install
    haskell-language-server

    elmPackages.elm
    elmPackages.elm-language-server
    elmPackages.elm-test
    elmPackages.elm-format

    yaml-language-server

    lua54Packages.lua
    stylua
    lua-language-server

    lua54Packages.fennel
    fennel-ls
    fnlfmt

    readline
  ];

}
