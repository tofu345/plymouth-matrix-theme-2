# Plymouth Theme

Based on [Plymouth Matrix
Theme](https://github.com/storax/plymouth-matrix-theme) with a better passward
prompt from [adi1090x's Plymouth Theme
Collection](https://github.com/adi1090x/plymouth-themes)

# Installation

Download the source from and go to the directory and execute:

```bash
make install
```

This will install the files to
`$(DESTDIR)$(PREFIX)/share/plymouth/themes/rules` which defaults to
`/usr/share/plymouth/themes/rules`.

Set as default theme with:

```bash
plymouth-set-default-theme rules
```
