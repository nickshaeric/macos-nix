{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.coreutils
    pkgs.curl
    pkgs.git
    pkgs.neovim
    pkgs.pandoc
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.stow
    pkgs.tmux
    pkgs.tree
  ];
}
