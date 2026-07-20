{ config, pkgs, ... }: {
  launchd.agents.emacs = {
    enable = true;

    config = {
      ProgramArguments = [
        "/Applications/Emacs.app/Contents/MacOS/Emacs"
        "--fg-daemon"
      ];

      KeepAlive = true;
    };
  };
}
