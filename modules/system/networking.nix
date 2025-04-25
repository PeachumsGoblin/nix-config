{ config, pkgs, lib, ... }:

# SSH/Networking config

{
  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  networking.networkmanager.enable = true;

  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];

environment.sessionVariables = rec {
  OPENAI_API_KEY=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;
};


}

