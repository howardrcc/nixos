{ pkgs, ... }:

{
  home.stateVersion = "25.11";

  programs.git = {
    enable = true;
    settings = {
      user.email = "howardchingchung@protonmail.com";
      user.name = "Howard Ching Chung";
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };

  # add more as needed
}
