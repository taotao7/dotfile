{ pkgs ? import (fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/ca0a54d8e18170ba977e5b8a4ac2ce6c7056089c.tar.gz")
  { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    nodePackages.bash-language-server
    rnix-lsp
  ];

  PATH = "${pkgs.nodePackages.bash-language-server}/bin:$PATH";

}
