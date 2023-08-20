{
  description = "A very basic flake";

  inputs = {
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils}:
    flake-utils.lib.eachDefaultSystem
      (system:
        let 
          pkgs = import nixpkgs { system = "${system}"; config.allowUnfree = true;}; 
        in 
        {
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}
