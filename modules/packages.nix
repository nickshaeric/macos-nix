{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Core Utilities
    coreutils-prefixed
    stow

    # Development & Tooling
    fd
    git
    neovim
    nixfmt
    pandoc
    ripgrep
    shellcheck
    tree-sitter

    # Networking & Utilities
    curl
    tmux
    tree
  ];
}
