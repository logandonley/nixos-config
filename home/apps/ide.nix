{ pkgs, ... }:
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

  home.profileExtra = ''
    export PATH=$HOME/.config/emacs/bin:$PATH
  '';
}
