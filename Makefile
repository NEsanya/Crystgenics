ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/myrust.$(EXT)
	LIBRARY_PATH=$(PWD)/target/debug:$(LIBRARY_PATH) crystal build src/main.cr -o main
	LD_LIBRARY_PATH=./target/debug ./main

target/debug/myrust.$(EXT): src/lib.rs Cargo.toml
	cargo build
	cd src

clean:
	rm -rf target main myrust.dwarf
