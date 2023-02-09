{ config, lib, pkgs, ... }:

let
  inherit (lib) mkIf mkOption types;
  inherit (pkgs) fetchurl;

  inherit (pkgs.callPackage ../linux-package.nix { }) linuxPackage repos;

  cfg = config.microsoft-surface;

  version = "6.1.9";
  extraMeta.branch = "6.1";
  patchDir = repos.linux-surface + "/patches/${extraMeta.branch}";
  kernelPatches = pkgs.callPackage ./patches.nix {
    inherit (lib) kernel;
    inherit version patchDir;
  };

  kernelPackages = linuxPackage {
    inherit version extraMeta kernelPatches;
    src = fetchurl {
      url = "mirror://kernel/linux/kernel/v6.x/linux-${version}.tar.xz";
      sha256 = "sha256-1gzxhWk8OG56zZ8+s6lK4w/7/uCpRHog6DcR4L31kis=";
    };
  };


in {
  options.microsoft-surface.kernelVersion = mkOption {
    type = types.enum [ "6.1.9" ];
  };

  config = mkIf (cfg.kernelVersion == "6.1.9") {
    boot = {
      inherit kernelPackages;
    };
  };
}
