{ pkgs ? import <nixpkgs> { }}:
with pkgs;
mkShell {
  buildInputs = [ ];
  nativeBuildInputs = [ 
    zig
    vscode
    vscode-extensions.tiehuis.zig
  ];
  shellHook = '' 
  
  '';
}
