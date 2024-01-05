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

    initExtra = ''
      export PATH="$HOME/.config/emacs/bin:$PATH"
    '';

    oh-my-zsh = {
     enable = true;
     plugins = [
       "z"
       "git"
     ];
     theme = "af-magic";
    };

  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
  };
}
