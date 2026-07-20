{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.coreutils
    pkgs.curl
    pkgs.fd
    pkgs.neovim
    pkgs.pandoc
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.stow
    pkgs.tmux
    pkgs.tree
  ];
}
