{ lib, pkgs, config, ...}:

{
  gtk = {
    enable = true;

  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer dark";
    };
  };

}
