{ inputs, ... }: {
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "nicksha";

    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
      "nikitabobko/homebrew-tap" = inputs.homebrew-nikitabobko;
      "d12frosted/homebrew-emacs-plus" = inputs.homebrew-emacs-plus;
    };

    mutableTaps = false;

    trust = {
      taps = [
        "nikitabobko/tap"
        "d12frosted/emacs-plus"
      ];
    };
  };

  homebrew = {
    enable = true;

    onActivation = {
      upgrade = true;
      autoUpdate = true;
      cleanup = "zap";
    };

    taps = [
      "homebrew/core"
      "homebrew/cask"
      "nikitabobko/tap"
      "d12frosted/emacs-plus"
    ];

    casks = [
      "nikitabobko/tap/aerospace"
      "d12frosted/emacs-plus/emacs-plus-app"
      "font-jetbrains-maple-mono-nf"
      "ghostty"
      "keeper-password-manager"
      "librewolf"
      "mactex-no-gui"
      "mullvad-vpn"
      "roblox"
      "sioyek"
      "vscodium"
    ];
  };
}
