.PHONY: all clean

all:
	julia -q --project --startup-file=no -e'using JuliaFormatterApp; compile()'
	rm build/bin/julia

clean:
	rm -rf ./build
