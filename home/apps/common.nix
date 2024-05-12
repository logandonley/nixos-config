{ pkgs, ... }: {
  home.packages = with pkgs; [
    ripgrep
    fd
    jq
    eza
    gh
    htop
    fzf

    zip
    xz
    unzip
    p7zip

    ffmpeg
    ffmpeg-normalize

    gimp

    kubectl
    kubernetes-helm
    helmfile
    k9s
    kubectx
    kind

    terraform
    pulumi-bin

    cachix
    go-task

    playerctl

    figma-linux
    # obsidian - current electron version is marked as insecure

    (ollama.override { acceleration = "cuda"; })
    # oterm - Causing trouble

    calibre

    steam-run # run normal binaries as a hack
    tlrc # tldr but in rust

    graphviz
    lldb

    bruno # A postman alternative

    vlc
    degit # Handy tool for cloning repos without git history

    backblaze-b2
    figlet

    losslesscut-bin

    maestral # Dropbox client
    maestral-gui

    anytype

    cloudflared

    zim
    qownnotes
    qc

    diskonaut

    glow
    imagemagick

    mods

    tenacity # Audacity fork
    safeeyes

    distrobox
    zoom-us

    variety
    gnome.gnome-boxes

    kdePackages.kdenlive
    glaxnimate
    kdePackages.breeze-icons

    remnote
    obsidian

    exercism

    freecad
    openscad

    pomodoro-gtk
    gamemode
  ];

}
