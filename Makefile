.PHONY: all clean

all:
	julia -q --project --startup-file=no -e'using Pkg;Pkg.instantiate();using JuliaFormatterApp;compile()'
	rm build/bin/julia

clean:
	rm -rf ./build
