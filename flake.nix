{
  description = "font flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "x86_64-darwin"
        "i686-linux"
        "aarch64-linux"
      ];
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages."${system}";
        in
        {
          # anzu-moji = pkgs.callPackage ./anzu-moji {};
          # azukifont = pkgs.callPackage ./azukifont {};
          # rii-tegaki-fude = pkgs.callPackage ./rii-tegaki-fude {};
          # rii-tegaki-n = pkgs.callPackage ./rii-tegaki-n {};
          # coming-soon = pkgs.callPackage ./coming-soon {};
          # logistra = pkgs.callPackage ./logistra {};
          monolisa = pkgs.callPackage ./monolisa { };
          # berkeley-mono = pkgs.callPackage ./berkeley-mono {};
        }
      );
    };
}
