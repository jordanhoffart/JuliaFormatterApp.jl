# Compile JuliaFormatter as a standalone app

We use [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl)
to compile [JuliaFormatter.jl](https://github.com/domluna/JuliaFormatter.jl)
into a standalone app `juliaformatter`.
This app can be called from the command line to format Julia files.

## Dependencies
*   [Julia >= 1.10](https://julialang.org/install/)
*   [GNU Make >= 4.4](https://www.gnu.org/software/make/make.html)

## Build
```bash
git clone https://github.com/jordanhoffart/JuliaFormatterApp.jl
cd JuliaFormatterApp.jl
make
```

## Install
If the build process succeeds, the `juliaformatter` binary is located at 
`build/bin/juliaformatter`.
The built files can then be copied to a more convenient install directory.
For example, on a UNIX-based system:

```bash
mkdir -p $HOME/local/juliaformatter
cp -r build/* $HOME/local/juliaformatter
```

Then, to make `juliaformatter` available, user's `PATH` can be updated.
For example, in `Bash`, the following can be added to the user's `.bashrc`:

```bash
export PATH="$HOME/local/juliaformatter/bin:$PATH"
```

## Usage
To format a Julia file, e.g. `example.jl`:

```bash
juliaformatter example.jl
```

Multiple files can be formatted at once.
For example, to format `foo.jl` and `bar.jl`:

```bash
juliaformatter foo.jl bar.jl
```

Standard shell-globbing is also supported.
For example, to format all Julia files in a directory `foo`:

```bash
juliaformatter foo.jl bar.jl
```

## Contributing

Contributions are welcome!
Please open an issue or a pull request to contribute.
