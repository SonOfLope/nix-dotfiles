{ config, lib, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services = {
    # Gnome3 config
    dbus.packages = [ pkgs.dconf ];
    udev.packages = [ pkgs.gnome3.gnome-settings-daemon ];

    # GUI interface
    xserver = {
      layout = "us";

      # Enable touchpad support.
      libinput.enable = true;

      # Enable the Gnome3 desktop manager
      displayManager.gdm.enable    = true;
      displayManager.gdm.wayland   = false; # screen-sharing is broken
    };
  };
}
