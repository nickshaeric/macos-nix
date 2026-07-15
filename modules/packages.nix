{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.curl
    pkgs.fastfetch
    pkgs.git
    pkgs.neovim
    pkgs.stow
    pkgs.tree
  ];
}
