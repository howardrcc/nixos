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

  programs.zsh = {
    enable = true;
  
  # Install plugins via Nix
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;  # if you want this too
  
    # oh-my-zsh config
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell"; 
      plugins = [ "git" "docker" ];  # only built-in plugins here
    # remove zsh-autosuggestions and zsh-autocomplete from this list
    };
    shellAliases = {
      ll = "ls -al";
      update = "sudo nixos-rebuild switch --flake ~/nixos";
    };
  };

# direnv
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;  # better nix integration
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [
    gcc  # treesitter needs a compiler
  #  git
  #ripgrep
  #fd
  ];
}
