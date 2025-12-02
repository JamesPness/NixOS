{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "nodejs";
  packages = with pkgs; [
    nodejs
  ];
  shellHook = ''echo "Node.js Shell Activated"'';
}
