{ lib, ... }:

{
  imports = [
    ../.
    ../../../common/cpu/intel
    ../../../common/pc/laptop
    ../../../common/pc/laptop/acpi_call.nix
  ];

  boot = {
    kernelModules = [
      "tpm-rng"
    ];
  };

  services.xserver.deviceSection = lib.mkDefault ''
    Option "TearFree" "true"
  '';
}
