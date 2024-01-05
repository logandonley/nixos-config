{
  programs.git = {
    enable = true;
    userName = "Logan Donley";
    userEmail = "hello@logandonley.com";
    extraConfig = {
      init = { 
        defaultBranch = "main";
      };
    };
  };
}
