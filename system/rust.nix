{ nixpkgs, rust-overlay, pkgs, ... }: 
{
  nixpkgs.overlays = [ rust-overlay.overlays.default ];
  environment.systemPackages = [
    pkgs.rust-bin.stable.latest.default
  ];
}
