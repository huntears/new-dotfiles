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
    ./dunst
    ./thunar
    ./flameshot.nix
    ./btop
    ./nvim
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
      libnotify
      tldr
      dmenu
      pamixer
      playerctl
      tokei
      ripgrep
      restic
      rclone
      vesktop
      signal-desktop
      arandr
      ungoogled-chromium
      file
      zip
      unzip
      bitwarden
      prismlauncher
      libreoffice
      exegol
      thunderbird
      ffmpeg
      fastfetch
      texliveFull
    ];

  };
  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
