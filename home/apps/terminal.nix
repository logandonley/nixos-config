{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    shellAliases = {
      k = "kubectl";
      task = "go-task";
      v = "nvim";
    };

    ohMyZsh = {
      enable = true;
      plugins = [
        "z"
        "git"
      ];
      theme = "af-magic";
    };
  };
}