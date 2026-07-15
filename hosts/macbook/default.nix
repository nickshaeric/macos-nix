{ self, pkgs, ... }: {
  imports = [
    ../../modules/packages.nix
  ];

  # Target architecture for apple silicon
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Core settings
  nix.settings.experimental-features = "nix-command flakes";
  nix.enable = false;  # determinate compatability

  # Set Git commit hash for darwin-version
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Backwards compatability state version
  system.stateVersion = 6;
}
