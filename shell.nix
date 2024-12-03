{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  allowUnfree = true;
  name = "AoC2024 c:";
  packages = with pkgs; [
    clang-tools
    bash-language-server
    valgrind
    alejandra
    cbfmt
    mdformat
    beautysh
    uncrustify
    shfmt
    gdb
    # only for finding linker/c flags
    pkg-config
  ];
  shellHook = ''
  '';
}
