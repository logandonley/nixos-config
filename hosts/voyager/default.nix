{
  imports =
    [ 
      ../../system/system.nix
      # ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "voyager";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;


  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;

    displayManager = {
      gdm.enable = true;
    };

    desktopManager = {
      gnome.enable = true;
    };
  };

  hardware.opengl = {
    enable = true;
  };


  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };


  system.stateVersion = "23.11"; 

}
