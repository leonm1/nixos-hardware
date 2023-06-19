{ lib, ... }:

let
  inherit (lib) mkOption types;

in {
  imports = [
    ./linux
  ];

  options.microsoft-surface.kernelVersion = mkOption {
    description = "Kernel Version to use (patched for MS Surface)";
    type = types.enum [ ];
  };
}
