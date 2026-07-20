{ pkgs, ... }: {
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "nickshaeric";
        email = "nicksha@tuta.io";
      };
      init = { defaultBranch = "main"; };
      pull = { rebase = true; };
      core = { editor = "nvim"; };
    };
  };
}
