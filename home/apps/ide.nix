{ pkgs, home, ... }:
{
  home.packages = with pkgs; [
    jetbrains.webstorm
    jetbrains.pycharm-professional
    jetbrains.goland
  ];

  programs.vscode = {
    enable = true;
  };

  programs.emacs = {
    enable = true;
    package = pkgs.emacs29;
  };

  home.activationScripts.setupDoomEmacs = {
    text = ''
      # Clone doom
      if [ ! -d ${home.homeDirectory}/.emacs.d ]; then
        git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
        ${home.homeDirectory}/.config/emacs/bin/doom install
      fi
    '';
  };

  home.profileExtra = ''
    export PATH=$HOME/.config/emacs/bin:$PATH
  '';
}
