# Pixi mojo experiments

> Learning to use mojo with pixi.

## Setup

To create a new project

    pixi init pixi-mojo-experiments -c https://conda.modular.com/max-nightly/ -c conda-forge --format pyproject

Adding dependencies in your new project

    pixi add python pygame

To rerun installs

    pixi reinstall

To run code

    pixi shell
    mojo life.mojo

To format code using the `format` pixi task defined in `pyproject.toml`

    pixi run format

To test code

    pixi shell
    mojo test -I . test

## Notes

Default setup with pixi where code is in `src/` does not seem to easily work yet with the mojo import system -> have your package dir in the project root or add the below to the `pyproject.toml`
```toml
[tool.hatch.build.targets.wheel]
packages = ["./src/pixi_mojo_experiments"]
```

`def run_display_simple(var grid: Grid) -> None:` weird: vscode lsp flags `var` but code compiles without error / warning

Running `mojo format` produces `error: unable to resolve Mojo formatter in PATH`, same as when trying the approach from the [gpu puzzles here](https://github.com/modular/mojo-gpu-puzzles/blob/main/pixi.toml#L39) - you need to have "modular" installed ...

configuring of vscode test not obvious, get various req squiggly lines but `mojo test` runs fine

bummer - as of 2025-07-28 no apple silicon gpu support yet

## Links to things

* https://pixi.sh/latest/#getting-started
* https://docs.modular.com/max/packages/
* https://docs.modular.com/mojo/manual/get-started/
