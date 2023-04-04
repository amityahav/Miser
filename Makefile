# Go compiler
GO := go

# Flags for the Go compiler
GOFLAGS := -v

# Build target (build all programs)
all: $(patsubst cmd/%,bin/%,$(wildcard cmd/*))

# Build target for each program
bin: cmd/main.go
	$(GO) build $(GOFLAGS) -o bin/Miser $<

# Clean up all binaries
clean:
	rm -f bin/*
