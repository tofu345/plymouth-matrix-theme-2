# Plymouth Matrix Theme 2

[Plymouth Matrix Theme](https://github.com/storax/plymouth-matrix-theme) by
storax with a better looking passward prompt from
[adi1090x's Plymouth Theme Collection](https://github.com/adi1090x/plymouth-themes)

# Ad-hoc Installation on NixOS

Clone this repository, replace `path/to/matrix2.nix` and add to your
`configuration.nix`.

```nix
boot.plymouth = {
  enable = true;
  theme = "matrix2";
  themePackages = with pkgs; [
    (pkgs.callPackage /path/to/matrix2.nix { })
  ];
};
```

I may add this to nixpkgs but I am not sure yet.
