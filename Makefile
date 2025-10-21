.PHONY: all clean

all:
	julia -q --project --startup-file=no -e'using JuliaFormatterApp; compile()'

clean:
	rm -rf ./build
