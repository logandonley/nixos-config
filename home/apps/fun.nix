{ pkgs, ... }: {
  home.packages = with pkgs;
    [
      ardour
      # reaper
    ];
}
