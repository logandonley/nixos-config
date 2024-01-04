{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    history = {
      size = 20000;
    };

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