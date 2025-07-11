{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    history = {
      append = true;
      expireDuplicatesFirst = true;
      ignoreSpace = true; # ignore commands that start with a space
      size = 10000;
      save = 10000;
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
