{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
    theme = "gruvbox-dark";
    font = "BlexMono Nerd Font 12";
  };
}
