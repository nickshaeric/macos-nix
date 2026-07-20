{ config, pkgs, ... }: {
  launchd.agents.emacs = {
    enable = true;

    config = {
      ProgramArguments = [
        "/Applications/Emacs.app/Contents/MacOS/Emacs"
        "--fg-daemon"
      ];

      EnvironmentVariables = {
        PATH = builtins.concatStringsSep ":" [
          "${config.home.profileDirectory}/bin"
          "/usr/local/bin"
          "/usr/bin"
          "/bin"
          "/usr/sbin"
          "/sbin"
        ];
      };

      KeepAlive = true;
    };
  };
}
