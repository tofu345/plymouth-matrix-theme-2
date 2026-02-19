# based on https://github.com/NixOS/nixpkgs/blob/ed142ab1b3a092c4d149245d0c4126a5d7ea00b0/pkgs/by-name/pl/plymouth-matrix-theme/package.nix

# I should put this on nixpkgs, but I have been a NixOS user for less than a week.

{
  stdenvNoCC,
  fetchFromGitHub,
}:
stdenvNoCC.mkDerivation {
  name = "plymouth-matrix-theme2";

  src = fetchFromGitHub {
    owner = "tofu345";
    repo = "plymouth-matrix-theme-2";
    rev = "e6960d8587d0673d450bd1b9045579ebc1c96185";
    hash = "sha256-gbiXnv744Ysw4zpJ/V2dYWgH5yjO+HWsIFwYTH/XfPQ=";
  };

  dontBuild = true;

  unpackPhase = "";

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/plymouth/themes/matrix2
    cp * $out/share/plymouth/themes/matrix2
    find $out/share/plymouth/themes/ -name \*.plymouth -exec sed -i "s@\/usr\/@$out\/@" {} \;
    runHook postInstall
  '';
}
