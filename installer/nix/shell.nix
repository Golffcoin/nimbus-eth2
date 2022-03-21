{ pkgs ? import <nixpkgs> { } }: with pkgs;
mkShell {
  buildInputs = [
    figlet
    git
    gnumake
    lsb-release

    # For installing ganache for local simulations
    nodePackages.ganache-cli
  ];

  shellHook = ''
    source ../../env.sh
    figlet "Welcome  to Nimbus-eth2"
  '';
}
