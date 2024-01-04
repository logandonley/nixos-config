{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    shellAliases = {
      k = "kubectl";
      task = "go-task";
      v = "nvim";
    };

    oh-my-zsh = {
     enable = true;
     plugins = [
       "z"
       "git"
     ];
     theme = "af-magic";
    };

  };
}