{ patchDir }:
[
  {
    name = "ms-surface/0001-surface3-oemb";
    patch = patchDir + "/0001-surface3-oemb.patch";
  }
  {
    name = "ms-surface/0002-mwifiex";
    patch = patchDir + "/0002-mwifiex.patch";
  }
  {
    name = "ms-surface/0003-ath10k";
    patch = patchDir + "/0003-ath10k.patch";
  }
  {
    name = "ms-surface/0004-ipts";
    patch = patchDir + "/0004-ipts.patch";
  }
  {
    name = "ms-surface/0005-surface-sam";
    patch = patchDir + "/0005-surface-sam.patch";
  }
  {
    name = "ms-surface/0006-surface-sam-over-hid";
    patch = patchDir + "/0006-surface-sam-over-hid.patch";
  }
  {
    name = "ms-surface/0007-surface-button";
    patch = patchDir + "/0007-surface-button.patch";
  }
  {
    name = "ms-surface/0008-surface-typecover";
    patch = patchDir + "/0008-surface-typecover.patch";
  }
  {
    name = "ms-surface/0009-cameras";
    patch = patchDir + "/0009-cameras.patch";
  }
  {
    name = "ms-surface/0010-amd-gpio";
    patch = patchDir + "/0010-amd-gpio.patch";
  }
  {
    name = "ms-surface/0011-rtc";
    patch = patchDir + "/0011-rtc.patch";
  }
]
