{ config, pkgs, ... }:
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
  ];
}