{
  imports = [ ./apps ./deps ];

  home.username = "logan";
  home.homeDirectory = "/home/logan";

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}

