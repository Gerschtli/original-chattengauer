{
  description = "original-chattengauer";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.jq
          pkgs.nodejs_latest
          pkgs.nodePackages_latest.pnpm
        ];

        PLAYWRIGHT_BROWSERS_PATH = pkgs.playwright.browsers;
      };

      packages.${system} = { inherit (pkgs) playwright; };
    };
}
