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
}
