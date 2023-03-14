{
  description = "python 3.11 dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-darwin.hello = nixpkgs.legacyPackages.x86_64-darwin.hello;
    packages.x86_64-darwin.default = self.packages.x86_64-darwin.hello;

    devShells.default = nixpkgs.mkShell {
      packages = [
        nixpkgs.python311
      ];
    };
  };
}
