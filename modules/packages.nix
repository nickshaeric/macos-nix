{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.curl
    pkgs.git
    pkgs.neovim
    pkgs.stow
    pkgs.tmux
    pkgs.tree
  ];
}
