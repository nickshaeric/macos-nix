{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.curl
    pkgs.fetch
    pkgs.git
    pkgs.neovim
    pkgs.stow
    pkgs.tree
  ];
}
