{ pkgs, ... }: {

  home.stateVersion = "23.11";

  imports = [
    ./modules/home/git.nix
  ];

}
