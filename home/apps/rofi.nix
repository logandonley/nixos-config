{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
    theme = "gruvbox-dark";
    font = "Iosevka Nerd Font 12";
  };
}
