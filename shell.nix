{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a5d0d3aae0db749b8970b1bf4eb2510ba6066e91.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    hy
    python39Packages.matplotlib
    python39Packages.numpy
  ];
}
