{ config, pkgs, ... }: {
  launchd.agents.emacs = {
    config = {
      ProgramArguments = [
        "/Applications/Emacs.app/Contents/MacOS/Emacs"
        "--fg-daemon"
      ];

      KeepAlive = true;
    };
  };
}
