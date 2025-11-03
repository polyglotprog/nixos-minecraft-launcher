let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs {
  };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    # Prism Minecraft Launcher:
    # https://search.nixos.org/packages?channel=25.05&show=prismlauncher&query=prismlauncher
    pkgs.prismlauncher
  ];
}
