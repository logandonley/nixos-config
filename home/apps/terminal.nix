{
  programs.alacritty = {
    enable = true;
    settings = {
      shell = "zsh";
      scrolling = { history = 20000; };
      font = {
        normal = { family = "IosevkaTerm Nerd Font"; };
        size = 16.0;
      };
      colors = {
        primary = {
          background = "#282828";
          foreground = "#ebdbb2";
        };
        normal = {
          black = "#282828";
          red = "#cc241d";
          green = "#98971a";
          yellow = "#d79921";
          blue = "#458588";
          magenta = "#b16286";
          cyan = "#689d6a";
          white = "#a89984";
        };
        bright = {
          black = "#928374";
          red = "#fb4934";
          green = "#b8bb26";
          yellow = "#fabd2f";
          blue = "#83a598";
          magenta = "#d3869b";
          cyan = "#8ec07c";
          white = "#ebdbb2";
        };
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
      pbcopy = "xclip -selection clipboard";
      pbpaste = "xclip -selection clipboard -o";
    };

    initExtra = ''
      export PATH="$HOME/.config/emacs/bin:$PATH"
      export PATH="$HOME/.nixos-config/bin:$PATH"
      export PATH="$HOME/.scripts/bin:$PATH"
      export PATH="$HOME/go/bin/:$PATH"

      set -o vi

      # dashed_line() {
      #   printf '%*s\n' "$COLUMNS" | tr ' ' '-'
      # }
      # export PROMPT='%{$FG[237]%}$(dashed_line)%{$reset_color%}> '
      # export PROMPT='> '
      # export RPROMPT=""
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "z" "git" "mix" ];
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
