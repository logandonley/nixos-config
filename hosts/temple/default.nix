{ pkgs, ... }: {
  imports = [
    ../../system/system.nix
    ./streamdeck.nix
    ./resolve.nix
    ./hardware-configuration.nix
    ./steam.nix
    # ./blender.nix
    ./wireshark.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "temple";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

    displayManager = {
      # gdm.enable = true;
      lightdm = { enable = true; };
      defaultSession = "qtile";
      sessionCommands = ''
        ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-0 --off --output DP-0 --mode 2560x1440 --rate 74.92 --pos 5120x0 --rotate left --output DP-1 --off --output DP-2 --mode 2560x1440 --rate 164.96 --pos 0x299 --rotate normal --output DP-3 --off --output DP-4 --primary --mode 2560x1440 --rate 144 --pos 2560x299 --rotate normal --output DP-5 --off
        ${pkgs.xorg.xset}/bin/xset r rate 300 70
      '';
    };

    windowManager.qtile = {
      enable = true;
      extraPackages = python311Packages:
        with python311Packages;
        [ qtile-extras ];
    };

    desktopManager = { gnome.enable = true; };
  };

  services.picom = { enable = true; };

  services.redshift = {
    enable = true;
    brightness = {
      day = "1";
      night = "1";
    };
    temperature = {
      day = 5500;
      night = 3500;
    };
  };

  location = {
    latitude = 35.779591;
    longitude = -78.638176;
  };

  programs.firejail.enable = true;

  hardware.opengl = { enable = true; };

  # Configure keymap in X11
  services.xserver = {
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  system.stateVersion = "23.11";

}
