{
  programs.zsh = {
    enable = true;
    history = { size = 20000; };

    shellAliases = {
      k = "kubectl";
      task = "go-task";
      v = "steam-run nvim";
    };

    initExtra = ''
      export PATH="$HOME/.config/emacs/bin:$PATH"
      export PATH="$HOME/.nixos-config/bin:$PATH"
      export PATH="$HOME/.scripts/bin:$PATH"
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "z" "git" ];
      theme = "af-magic";
    };

  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
}
