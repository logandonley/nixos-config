{
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
      bind r source-file ~/.config/tmux/tmux.conf
      set-option -g history-limit 10000

      # Resize panes
      bind -n M-H resize-pane -L 2
      bind -n M-J resize-pane -D 2
      bind -n M-K resize-pane -U 2
      bind -n M-L resize-pane -R 2

      # panes
      # set -g pane-border-style 'fg=color233 bg=color233' 
      # set -g pane-active-border-style 'bg=color233 fg=color46'

      # status bar
      set -g status-position bottom
      # set -g status-style 'bg=color233 fg=color15 dim'

      # Fix the slow escape-time for vim
      set -sg escape-time 10

      # Copy
      set-window-option -g mode-keys vi
      bind-key -T copy-mode-vi v send -X begin-selection
      bind-key -T copy-mode-vi V send -X select-line
      bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'


# Set the default terminal color
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ",tmux-256color:Tc"

# Pane border and active border styles
set -g pane-border-style 'fg=#484f58 bg=#0d1117'
set -g pane-active-border-style 'fg=#58a6ff bg=#0d1117'

# Status bar position and style
set -g status-position bottom
set -g status-style 'bg=#0d1117 fg=#b3b1ad'

# Window list - active and inactive window styles
set-window-option -g window-status-style 'fg=#b1bac4 bg=default'
set-window-option -g window-status-current-style 'fg=#0d1117 bg=#58a6ff'

# Message style
set -g message-style 'fg=#b3b1ad bg=#0d1117'

# Command message style
set -g message-command-style 'fg=#b3b1ad bg=#0d1117'

# Status left/right style (adjust according to what you display there)
set -g status-left-style 'fg=#b3b1ad bg=#0d1117'
set -g status-right-style 'fg=#b3b1ad bg=#0d1117'
       '';
  };
}
