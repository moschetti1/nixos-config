{
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

}
