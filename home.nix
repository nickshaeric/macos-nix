{ pkgs, ... }: {

  home.stateVersion = "23.11";

  imports = [
    ./modules/home/emacs.nix
    ./modules/home/git.nix
  ];

}
