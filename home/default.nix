{ pkgs, username, ... }:
{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./git
    ./neofetch
    ./kitty.nix
    ./bash
    ./vim
    ./x
    ./tmux
    ./extra_files.nix
    ./qtile
    ./betterlockscreen
    ./picom
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";

    sessionVariables = {
      EDITOR = "vim";
    };

    stateVersion = "23.11";

    packages = with pkgs; [
      neofetch
      onefetch
      tmux
      feh
      picom
      spotify
      gimp
      ncdu
      distrobox
      brightnessctl
    ];

  };
  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
