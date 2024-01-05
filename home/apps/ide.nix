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
}
