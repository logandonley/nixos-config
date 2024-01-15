{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ripgrep
    fd
    jq
    eza
    gh
    htop
    fzf

    helix

    zip
    xz
    unzip
    p7zip

    ffmpeg
    ffmpeg-normalize

    blender
    gimp-with-plugins 

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

    ollama
    oterm

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
  ];

}
