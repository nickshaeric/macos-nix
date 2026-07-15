{ config, inputs, ... }: {
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "nicksha";

    # Declarative tap management
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
      "nikitabobko/homebrew-tap" = inputs.homebrew-nikitabobko;
      "d12frsoted/homebrew-emacs-plus" = inputs.homebrew-emacs-plus;
    };
    
    mutableTaps = false;

    # Optional: Declarative Homebrew tap trust entries
    trust = {
      formulae = [ ];
      casks = [ ];
      commands = [ ];
      taps = [
        "nikitabobko/tap"
	"d12frosted/emacs-plus"
      ];
    };
  };

  homebrew = {
    enable = true;

    taps = builtins.attrNames config.nix-homebrew.taps;
    
    onActivation = {
      cleanup = "zap";
      upgrade = true;
      autoUpdate = false;
    };

    # Casks
    casks = [
      "nikitabobko/tap/aerospace"
      "d12frosted/emacs-plus/emacs-plus-app"
      "ghostty"
      "librewolf"
      "mullvad-vpn"
      "roblox"
      "sioyek"
      "font-jetbrains-maple-mono-nf"
    ];
  };
}
