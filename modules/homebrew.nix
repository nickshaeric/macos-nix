{ config, inputs, ... }: {
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "nicksha";

    # Declarative tap management
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
    };
    
    mutableTaps = false;

    # Optional: Declarative Homebrew tap trust entries
    trust = {
      formulae = [ ];
      casks = [ ];
      commands = [ ];
      taps = [ ];
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
      "ghostty"
    ];
  };
}
