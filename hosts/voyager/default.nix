{ pkgs, ... }: {
  imports =
    [ ../../system/system.nix ./hardware-configuration.nix ./tailscale.nix ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "voyager";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  services.xserver = { enable = true; };

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  hardware.opengl = { enable = true; };

  # Configure keymap in X11
  services.xserver = {
    xkb = {
      layout = "us";
      variant = "";
      options = "caps:swapescape";
    };
  };

  system.stateVersion = "24.05";

}
