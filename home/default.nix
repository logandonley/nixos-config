{ config, pkgs, ... }:

{
  imports = [ ./apps ];

  home.username = "logan";
  home.homeDirectory = "/home/logan";

  programs.git = {
    enable = true;
    userName = "Logan Donley";
    userEmail = "hello@logandonley.com";
    extraConfig = {
      init = { 
        defaultBranch = "main";
      };
    };
  };

  programs.tmux = {
    enable = true;
    extraConfig = ''
    bind | split-window -h
    bind - split-window -v
    bind h select-pane -L
    bind l select-pane -R
    bind j select-pane -D
    bind k select-pane -U
    set -g mouse on
    set-option -g allow-rename off
    bind r source-file ~/.tmux.conf
    set-option -g history-limit 10000

    # Resize panes
    bind -n M-H resize-pane -L 2
    bind -n M-J resize-pane -D 2
    bind -n M-K resize-pane -U 2
    bind -n M-L resize-pane -R 2

    # panes
    set -g pane-border-style 'fg=color233 bg=color234'
    set -g pane-active-border-style 'bg=color234 fg=color46'

    # status bar
    set -g status-position bottom
    set -g status-style 'bg=color233 fg=color15 dim'

    # Fix the slow escape-time for vim
    set -sg escape-time 10
     '';
  };

  programs.vscode = {
	enable = true;

  };

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
    
  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}

