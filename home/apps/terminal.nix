{
  programs.alacritty = {
    enable = true;
    settings = {
      shell = "zsh";
      scrolling = { history = 20000; };
      font = {
        normal = { family = "BlexMono Nerd Font"; };
        size = 16.0;
      };
      colors = {
        primary = {
          background = "#0d1117";
          foreground = "#b3b1ad";
        };
        normal = {
          black = "#484f58";
          red = "#ff7b72";
          green = "#3fb950";
          yellow = "#d29922";
          blue = "#58a6ff";
          magenta = "#bc8cff";
          cyan = "#39c5cf";
          white = "#b1bac4";
        };
        bright = {
          black = "#6e7681";
          red = "#ffa198";
          green = "#56d364";
          yellow = "#e3b341";
          blue = "#79c0ff";
          magenta = "#d2a8ff";
          cyan = "#56d4dd";
          white = "#f0f6fc";
        };
        indexed_colors = [
          {
            index = 16;
            color = "#d18616";
          }
          {
            index = 17;
            color = "#ffa198";
          }
        ];
      };
    };
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
      (cat ~/.cache/wal/sequences &)

      # dashed_line() {
      #   printf '%*s\n' "$COLUMNS" | tr ' ' '-'
      # }
      # export PROMPT='%{$FG[237]%}$(dashed_line)%{$reset_color%}> '
      # export PROMPT='> '
      # export RPROMPT=""
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "z" "git" ];
      theme = "af-magic";
    };
  };

  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
}
