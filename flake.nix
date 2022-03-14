{
  description = "A very basic flake";
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.test = nixpkgs.legacyPackages.x86_64-linux.callPackage ./derivation.nix {};
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.test;
  };
}
