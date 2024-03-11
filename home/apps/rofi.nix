{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-emoji ];
    theme = "Arc-Dark";
  };
}
