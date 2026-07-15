{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.curl
    pkgs.git
    pkgs.neovim
    pkgs.tree
  ];
}
