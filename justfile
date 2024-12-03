build_path := "." / "build"
build_script := build_path / "build.sh"

@default:
  just --list

@build:
  {{build_script}}
