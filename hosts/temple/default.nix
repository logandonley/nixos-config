{ pkgs, ... }: {
  imports = [
    ../../system/system.nix
    ./streamdeck.nix
    ./resolve.nix
    ./hardware-configuration.nix
    ./steam.nix
    ./blender.nix
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

    displayManager = { gdm.enable = true; };

    desktopManager = { gnome.enable = true; };

    excludePackages = [ pkgs.xterm ];
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
