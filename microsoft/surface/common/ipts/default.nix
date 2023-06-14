{ config, lib, pkgs, ... }:

let
  inherit (lib) mkDefault mkEnableOption mkIf mkMerge;

  cfg = config.microsoft-surface.ipts;

in {
  options.microsoft-surface.ipts = {
    enable = mkEnableOption "Enable IPTSd for Microsoft Surface";
  };

  config = mkMerge [
    {
      microsoft-surface.ipts.enable = mkDefault false;
    }

    (mkIf cfg.enable {
      systemd.services.iptsd = {
        description = "IPTSD";
        path = with pkgs; [ bash iptsd ];
        script = "iptsd $(iptsd-find-hidraw)";
        wantedBy = [ "multi-user.target" ];
      };
    })
  ];
}
