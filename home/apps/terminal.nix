{
  programs.alacritty = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
    history = { size = 20000; };

    shellAliases = {
      k = "kubectl";
      task = "go-task";
      v = "nvim";
    };

    initExtra = ''
      export PATH="$HOME/.config/emacs/bin:$PATH"
      export PATH="$HOME/.nixos-config/bin:$PATH"
      export PATH="$HOME/.scripts/bin:$PATH"

      set -o vi

      # dashed_line() {
      #   printf '%*s\n' "$COLUMNS" | tr ' ' '-'
      # }
      # export PROMPT='%{$FG[237]%}$(dashed_line)%{$reset_color%}» '
      # export RPROMPT=""
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
