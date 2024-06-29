{ pkgs, ... }: {
  home.packages = with pkgs; [ dconf ];

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.gnome-themes-extra;
    };
    font = {
      name = "Iosevka Nerd Font";
      size = 10;
    };
    iconTheme = { name = "Adwaita-dark"; };
    gtk2 = { extraConfig = "gtk-application-prefer-dark-theme = true"; };
    gtk3 = { extraConfig = { gtk-application-prefer-dark-theme = true; }; };
    gtk4 = { extraConfig = { gtk-application-prefer-dark-theme = true; }; };
  };

}
